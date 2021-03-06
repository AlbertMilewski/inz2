<?php

include_once 'dbConfig.php'; //ustawienia bazy danch


if(isset($_POST['func']) && !empty($_POST['func'])){
	switch($_POST['func']){
		case 'WywolajKalendarz':
			WywolajKalendarz($_POST['year'],$_POST['month']);
			break;
		case 'ZamowioneDania':
			ZamowioneDania($_POST['date']);
			break;
		default:
			break;
	}
}


function WywolajKalendarz($rok = '', $miesiac = ''){  //funkcja wywołująca kalendarz, przyjmuje 2 parametry rok i miesiąc
	$aktualnyRok = ($rok != '')?$rok:date("Y"); //przypisanie aktualnego roku do zmiennej aktualnyRok
	$aktualnyMiesiac = ($miesiac != '')?$miesiac:date("m"); //przypisanie aktualnego miesiąca do zmiennej aktualnyMiesiac
	$data = $aktualnyRok.'-'.$aktualnyMiesiac.'-01'; //ustalanie poczatkowej daty
	$pierwszyDzienMiesiaca = date("N",strtotime($data)); //  date z "N" to przedstawienie dni wedle ISO-8601 1 dla poniedziałku 7 dla Niedzieli
	$liczbaDniWMiesiacu = cal_days_in_month(CAL_GREGORIAN,$aktualnyMiesiac,$aktualnyRok); //ustalanie liczby dni miesiąca
	$liczbaDniWMiesiacuWyswietlana = ($pierwszyDzienMiesiaca == 1)?($liczbaDniWMiesiacu):($liczbaDniWMiesiacu + ($pierwszyDzienMiesiaca - 1)); //liczba dni która jest wyświetlana, aby zachować symetrię wyświetlane są dni z miesięcy obok
	$ileWyswietlane = ($liczbaDniWMiesiacuWyswietlana <= 35)?35:42; //ustalanie czy wyswietlane jest 35 dni czy 42, aby zachować równość w wyglądzie
	$poprzedniMiesiac = date("m", strtotime('-1 month', strtotime($data))); //ustalanie poprzeniego miesiąca
	$poprzedniRok = date("Y", strtotime('-1 month', strtotime($data)));  //ustalanie poprzeniego roku
	$liczbaDniWMiesiacuPoprzednim = cal_days_in_month(CAL_GREGORIAN, $poprzedniMiesiac, $poprzedniRok); //ustalanie liczby dni w  poprzednim miesiącau
	
	
?>



	<main class="kalendarz">
		<section class="data-tytul">

			<a href="javascript:void(0);" class="poprzedni-miesiac" onclick="wywolajKalendarz('calendar_div','<?php echo date("Y",strtotime($data.' - 1 Month')); ?>','<?php echo date("m",strtotime($data.' - 1 Month')); ?>');"></a> 
			
			
			
			<?php $cos = '<h2 class="data_menu_lewe">'.dataPolska($data, 'F').' '.dataPolska($data, 'Y').'</h2>'; echo $cos; ?>
			<!--
			<select class="month-dropdown">
					<?php //echo listaMiesiecy($aktualnyMiesiac); ?>
				</select>
				-->
			
			<a href="javascript:void(0);" class="nastepny-miesiac" onclick="wywolajKalendarz('calendar_div','<?php echo date("Y",strtotime($data.' + 1 Month')); ?>','<?php echo date("m",strtotime($data.' + 1 Month')); ?>');"></a>
		</section>
		
		<aside class="menu_lewe" id="lista_dan">

			<?php echo ZamowioneDania(); ?>
			
			
			
			
			
			
		</aside>
		
							<div class="popup" popup-name="popup-1">
    <div class="popup-content">
    <h2>Title of Popup 1</h2>
<?php echo ZamowioneDania(); //nie działa ponieważ funkcja liczy na date, której nie wczytuje ?>
<input type="button" onclick="location.href='druga.php';" value="Go to Google" />
<a class="close-button" popup-close="popup-1" href="javascript:void(0)">x</a>  
    </div>
</div>
		<script>
$(function() {
    // Open Popup
    $('[popup-open]').on('click', function() {
        var popup_name = $(this).attr('popup-open');
 $('[popup-name="' + popup_name + '"]').fadeIn(300);
    });
 
    // Close Popup
    $('[popup-close]').on('click', function() {
 var popup_name = $(this).attr('popup-close');
 $('[popup-name="' + popup_name + '"]').fadeOut(300);
    });
 
    // Close Popup When Click Outside
    $('.popup').on('click', function() {
 var popup_name = $(this).find('[popup-close]').attr('popup-close');
 $('[popup-name="' + popup_name + '"]').fadeOut(300);
    }).children().click(function() {
 return false;
    });
 
});
</script>
		
		
		
		
		<section class="dni_tygodnia">
			<section class="dni_tytul">
				<span class="dzien">Pon</span>
				<span class="dzien">Wt</span>
				<span class="dzien">Śr</span>
				<span class="dzien">Cz</span>
				<span class="dzien">Pt</span>
				<span class="dzien">So</span>
				<span class="dzien">Ndz</span>
			</section>
			
			
		
			<?php 
				$aktualnyDzien = 1;
				//$wybraneNum = 0;
				
				echo '<section class="kalendarz_tydzien">';
				for($x=1;$x<=$ileWyswietlane;$x++){  //petla do ustalenia który dzien ma zmienic kolor na czerwony oznaczajacy aktualny dzien
					if(($x >= $pierwszyDzienMiesiaca || $pierwszyDzienMiesiaca == 1) && $x <= ($liczbaDniWMiesiacuWyswietlana)){
						
						$aktualnaData = $aktualnyRok.'-'.$aktualnyMiesiac.'-'.$aktualnyDzien; //aktualna data
						
						
						//zakomentowane ponieważ można zrobić funkcjonalność taka ze jeśli brak wyników to dzień świeci się na czarno, aktualny an czerwono, a dni co mamy cos wybrane na niebiesko
						
						global $db;
						$wynik = $db->query("SELECT title FROM zamowienia WHERE date = '".$aktualnaData."'");
						$wybraneNum = $wynik->num_rows;
						
						
						
						if(strtotime($aktualnaData) == strtotime(date("Y-m-d"))){
							echo '
								<div class="kalendarz_dzien dzis" onclick="ZamowioneDania(\''.$aktualnaData.'\');">
									<span class="kalendarz_data">'.$aktualnyDzien.'</span>
									
								</div>
							';
						}
						elseif($wybraneNum > 0){
							echo '
								<div class="kalendarz_dzien wybrane" onclick="ZamowioneDania(\''.$aktualnaData.'\');">
									<span class="kalendarz_data">'.$aktualnyDzien.'</span>
									
								</div>
							';
						}
						else{
							echo '
								<div class="kalendarz_dzien nie-wybrane" onclick="ZamowioneDania(\''.$aktualnaData.'\');">
									<span class="kalendarz_data">'.$aktualnyDzien.'</span>
									
								</div>
							';
						}
						
						$aktualnyDzien++;
					}else{
						if($x < $pierwszyDzienMiesiaca){
							$nieaktywneDni = ((($liczbaDniWMiesiacuPoprzednim-$pierwszyDzienMiesiaca)+1)+$x);
							$nieaktywne = ' ';
						}else{
							$nieaktywneDni = ($x-$liczbaDniWMiesiacuWyswietlana);
							$nieaktywne = ' ';
						}
						echo '
							<div class="kalendarz_dzien nieaktywny">
								<span class="kalendarz_data">'.$nieaktywneDni.'</span>
								<span class="kalendarz_dania">'.$nieaktywne.'</span>
							</div>
						';
					}
					echo ($x%7 == 0 && $x != $ileWyswietlane)?'</section><section class="kalendarz_tydzien">':'';
				}
				echo '</section>';
			?>
		</section>
	</main>
		

	<script>
		function wywolajKalendarz(target_div, year, month){
			$.ajax({
				type:'POST',
				url:'functions.php',
				data:'func=WywolajKalendarz&year='+year+'&month='+month,
				success:function(html){
					$('#'+target_div).html(html);
				}
			});
		}
		
		function ZamowioneDania(date){
			$.ajax({
				type:'POST',
				url:'functions.php',
				data:'func=ZamowioneDania&date='+date,
				success:function(html){
					$('#lista_dan').html(html);
				}
			});
		}
		
		$(document).ready(function(){ //mozliwosc klikania w dni
			
			
		});
	</script>
<?php
}

function dataPolska($data, $format) //funkcja zamieniajaca angielskie nazwy miesięcy i dni tygodnia na polskie
{
    $angielskieDni = array('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'); //tablica z angielskimi dniami
    $polskieDni = array('Poniedziałek', 'Wtorek', 'Środa', 'Czwartek', 'Piątek', 'Sobota', 'Niedziela'); //tablica z polskimi dniami
    $angielskieMiesiace = array('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'); //tablica z angielskimi miesiącami
    $polskieMiesiace = array('Styczeń', 'Luty', 'Marzec', 'Kwiecień', 'Maj', 'Czerwiec', 'Lipiec', 'Sierpień', 'Wrzesień', 'Październik', 'Listopad', 'Grudzień'); //tablica z polskimi miesiącami
    return str_replace($angielskieMiesiace, $polskieMiesiace, str_replace($angielskieDni, $polskieDni, date($format, strtotime($data) ) ) ); //zamienianie wczytanych angielskich nazw miesięcy na polskie nazwy
}

function ZamowioneDania($data = ''){  //funkcja wyswietlająca zamówione dania w zależnosci na jaką date najedzie użytkownik
	$data = $data?$data:date("Y-m-d"); //ustalanie aktualnej daty
	$data_menu_lewe = '<h2 class="data_menu_lewe">'.dataPolska($data, 'l').'<br>'.dataPolska($data, 'd F').'</h2>';  //to odpowiada za Wednesday December 23
	$pop ='<a class="open-button" popup-open="popup-1" href="druga.php">
Wybierz posiłki</a>';
	global $db;
	$wynik = $db->query("SELECT title FROM zamowienia  WHERE date = '".$data."' AND username = 'amilewski'");
	if($wynik->num_rows > 0){
		$data_menu_lewe .= '<ul class="sidebar__list">';
		$data_menu_lewe .= '<li class="sidebar__list-item sidebar__list-item--complete">Wybrane Posiłki</li>';
		$i=0;
		while($row = $wynik->fetch_assoc()){ $i++;
            $data_menu_lewe .= '<li class="sidebar__list-item"><span class="list-item__time">'.$i.'.</span>'.$row['title'].'</li>';
        }
		$data_menu_lewe .= '</ul>';
	}
	echo $pop;
	echo $data_menu_lewe;
}
