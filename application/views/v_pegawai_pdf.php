<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class PDF extends FPDF{
    // Page header
    function Header(){
        if ($this->PageNo() == 1){
            $this->setFont('Arial','I',9);
            $this->setFillColor(255,255,255);
            $this->cell(90,6,'',0,0,'L',1); 
            $this->cell(100,6,"(A4 - Portrait) - Printed date : " . date('d-M-Y'),0,1,'R',1); 
            $this->Line(10,$this->GetY(),200,$this->GetY());
            // Logo
            $this->Image('https://i.imgur.com/3K1SKNJ.png', 10, 20,'20','20','png');
            $this->Ln(12);
            $this->setFont('Arial','',14);
            $this->setFillColor(255,255,255);
            $this->cell(25,6,'',0,0,'C',0); 
            $this->cell(100,6,'Laporan Data Pegawai',0,1,'L',1); 
            $this->cell(25,6,'',0,0,'C',0); 
            $this->cell(100,6,"",0,1,'L',1); 
            $this->cell(25,6,'',0,0,'C',0); 
            $this->cell(100,6,'',0,1,'L',1); 
            // Line break
            $this->Ln(5);
            $this->setFont('Arial','B',9);
            $this->setFillColor(230,230,200);
            $this->cell(10,10,'No.',1,0,'L',1);
            $this->cell(25,10,'NIP',1,0,'L',1);
            $this->cell(50,10,'NAMA PEGAWAI',1,0,'L',1);
            $this->cell(105,10,'ALAMAT',1,1,'C',1);
        }else{
            $this->setFont('Arial','I',9);
            $this->setFillColor(255,255,255);
            $this->cell(90,6,"Laporan Data Pegawai",0,0,'L',1); 
            $this->cell(100,6,"(A4 - Portrait) - Printed date : " . date('d-M-Y'),0,1,'R',1); 
//            $this->Line(10,$this->GetY(),200,$this->GetY());
            $this->Ln(2);
            $this->setFont('Arial','B',9);
            $this->setFillColor(230,230,200);
            $this->cell(10,10,'No.',1,0,'L',1);
            $this->cell(25,10,'NIP',1,0,'L',1);
            $this->cell(50,10,'NAMA PEGAWAI',1,0,'L',1);
            $this->cell(105,10,'ALAMAT',1,1,'C',1);
        }
    }

    function Content($sSQL){
        $ya = 46;
        $rw = 6;
        $no = 1;
        foreach ($sSQL as $key) {
            $this->setFont('Arial','',9);
            $this->setFillColor(255,255,255);	
            $this->cell(10,6,$no,1,0,'L',1);
            $this->cell(25,6,$key->nip,1,0,'L',1);
            $this->cell(50,6,$key->nama_pegawai,1,0,'L',1);
            $this->cell(105,6,$key->alamat,1,1,'L',1);
            $ya = $ya + $rw;
            $no++;
        }            
    }

    // Page footer
    function Footer(){
        // Position at 1.5 cm from bottom
        $this->SetY(-15);
        //buat garis horizontal
        $this->Line(10,$this->GetY(),200,$this->GetY());
        //Arial italic 9
        $this->SetFont('Arial','I',9);
        $this->Cell(0,10,'Copyright@'.date('Y').' BLOG cacan',0,0,'L');
        //nomor halaman
        $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'R');
    }
}

// Instanciation of inherited class
$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();
//$pdf->SetFont('Times','',12);
//for($i=1;$i<=40;$i++)
//    $pdf->Cell(0,10,'Printing line number '.$i,0,1);
$pdf->Content($sSQL);
$pdf->Output();
