   M S B A M L   `   `   `  ����B  >WpfApp2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp2WpfApp2  5   	   d `Microsoft.Maps.MapControl.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35tRclr-namespace:Microsoft.Maps.MapControl.WPF;assembly=Microsoft.Maps.MapControl.WPFMicrosoft.Maps.MapControl.WPF 5   	       WpfApp2.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp2     5   	   bwpfRclr-namespace:Microsoft.Maps.MapControl.WPF;assembly=Microsoft.Maps.MapControl.WPF     5   	     � Title$  
MainWindow��5	   	   $	��450��6   $	��800��6)   .��5      � $��0,0,0,-3q�6    � ColumnDefinitions 5   
   �� 5      �� 5      $��0* �6   .+�5   
   �� -   5        $	��lat��5      $
��Left=�6   $��30��68   $��	72,49,0,0q�6D    �� TextWrapping$
 Wrap=�6W   $��5.709360123��6k   $	��Top=�6~   $��85��6�   �� 5   
   -   5        $	��lon��5      $��30��6   $��251,47,443,0q�6)   $
 Wrap=�6?   $��
45.1764946��6S   $	��Top=�6e   �� 5   
   -   5        $
��dist��5      $
��Left=�6   $��30��69   $��
416,43,0,0q�6E   $
 Wrap=�6Y   $
��1000��6m   $	��Top=�6y   $	��149��6�   �� 5   
   -   5        $)��#Afficher les lignes
 de transports��5      $
��Left=�6^   $��51��6y   $��
614,39,0,0q�6�   $	��Top=�6�   $	��142��6�    J� RenderTransformOrigin$ -0.028,0.62&�6�   �� 5   
   $��	Lattitude��6   $
��Left=�6$   $��29��6?   $��0,43,0,0q�6K   $	��Top=�6]   $��67��6u   �� 5   
   $��	Longitude��6   $
��Left=�6$   $��30��6?   $��
178,42,0,0q�6K   $	��Top=�6_   $��67��6w   �� 5   
   $��Distance��6   $
��Left=�6#   $��33��6>   $��
349,39,0,0q�6J   $	��Top=�6^   $��67��6v   �� 5   
   $����Pour rechercher les lignes de transports autour de votre position, veuillez indiquer votre position (lattitude et longitude) et la distance maximale des arrêts de bus 
��6   $
��Left=�6�   $��	10,10,0,0q�6�   $	��Top=�6�   $	��772��6  $��33��6  &   System.Windows.Controls.DataGrid  5   
   -   5        $��gridtls��5      $
��Left=�6"   $	��138��6=   $��416,114,0,0q�6J   $	��Top=�6_   $	��355��6w   5        5   
   -   5        $��gridtl��5      $
��Left=�6!   $	��121��6<   $��416,276,0,0q�6I   $	��Top=�6^   $	��355��6v   �� 5   
   $��	Arrêts :��6   $
��Left=�6#   $��27��6>   $��
416,87,0,0q�6J   $	��Top=�6^   $	��173��6v   �� 5   
   $%��Lignes passant par l'arrêt :
��6   $
��Left=�6A   $��27��6\   $��416,249,0,0q�6h   $	��Top=�6}   $	��149��6�   �� 5   
   -   5        $��tlsName��5      $
��Left=�6!   $��23��6<   $��570,257,0,0q�6H   $
 Wrap=�6]   $	��Top=�6q   $	��201��6�   $ 0.255,0.584&�6�   '  !Microsoft.Maps.MapControl.WPF.Map  5   
   $��10,87,395,25q�6   +  %Microsoft.Maps.MapControl.WPF.MapCore   Center<  6Microsoft.Maps.MapControl.WPF.Design.LocationConverter$ 45.18, 5.72 6(      	ZoomLevel$ 12Q�6>   6P   5      5!      