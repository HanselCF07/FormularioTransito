
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="Formulario_Transito.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Formulario</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    
    <style>
        div{margin:5px;}
        table, th, tr, td {
          border: 1px solid black;
          border-collapse: collapse;          
        }
        th, tr {text-align:center;}
        .num-td{width:2%;}
        .td-p{display:inline-block; margin:0% 0% 0% 8%; padding:0%;}       
        
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <table style="width:100%">
                <tr>               
                    <th colspan="5">1. ORGANISMO DE TRANSITO</th>
                </tr>
                <tr>               
                    <th colspan="5">Servicios Integrales para la Movilidad - SIM</th>
                </tr>
                <tr> 
                    <th>CIUDAD</th>
                    <th>CODIGO</th>
                    <th colspan="3">FECHA DE TRAMITE</th>
                </tr>
                <tr>
                    <td >
                        <asp:TextBox ID="tb_1a" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_1a" ErrorMessage="Campo requerido">Debe ingresar la ciudad</asp:RequiredFieldValidator>                                                
                    </td>
                    <td>
                        <asp:TextBox ID="tb_1b" runat="server" type="Number" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_1b" ErrorMessage="Campo requerido, debe ser númerico">Debe ingresar codigo</asp:RequiredFieldValidator>                        
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tb_1b" ErrorMessage="*" ValidationExpression="([0-9])*">Solo numero</asp:RegularExpressionValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="tb_1c" runat="server" type="Number" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_1c" ErrorMessage="Campo requerido, debe ser númerico">Debe ingresar el Dia</asp:RequiredFieldValidator>                        
                        <asp:RangeValidator ID="Value1RangeValidator" ControlToValidate="tb_1c" Type="Integer" MinimumValue="1" MaximumValue="31" Display="Dynamic" ErrorMessage="Por favor ingrese Dia 1/31." runat="server"/>
                    </td>
                    <td>
                        <asp:TextBox ID="tb_1d" runat="server" type="Number" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tb_1d" ErrorMessage="Campo requerido, debe ser númerico">Debe ingresar el Mes</asp:RequiredFieldValidator>                        
                        <asp:RangeValidator ID="RangeValidator1" ControlToValidate="tb_1d" Type="Integer" MinimumValue="1" MaximumValue="12" Display="Dynamic" ErrorMessage="Por favor ingrese Mes 1/12." runat="server"/>
                    </td>
                    <td>
                        <asp:TextBox ID="tb_1e" runat="server" type="Number" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tb_1e" ErrorMessage="Campo requerido, debe ser númerico">Debe ingresar el Año</asp:RequiredFieldValidator>                        
                        <asp:RangeValidator ID="RangeValidator2" ControlToValidate="tb_1e" Type="Integer" MinimumValue="1800" MaximumValue="3000" Display="Dynamic" ErrorMessage="Por favor ingrese Mes 1800/3000." runat="server"/>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table style="width:100%">                
                <tr>               
                    <th colspan="2">2. PLACA</th>
                </tr>
                <tr> 
                    <th>LETRAS</th>
                    <th>NUMEROS</th>              
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox1" ErrorMessage="Campo requerido">Debe ingresar Letras de la Placa</asp:RequiredFieldValidator>                        
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" Display="Dynamic" ValidationExpression="([a-z]|[A-Z]){3}"> Digite 3 letras</asp:RegularExpressionValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" type="Number" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox2" ErrorMessage="Campo requerido">Debe ingresar Numeros de la Placa</asp:RequiredFieldValidator> 
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" Display="Dynamic" ValidationExpression="([0-9]){3}"> Digite 3 #</asp:RegularExpressionValidator>                        
                    </td>
                </tr>
            </table>
        </div> 
        <div>
            <table style="width:100%">                
                <tr>               
                    <th colspan="12">3. TRÁMITE SOLICITADO</th>
                </tr>
                <tr>
                    <td class="num-td">1</td>
                    <td>
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="rb1" Checked="True" />
                        <p class="td-p">MATRÍCULA<br>REGISTRO</p>
                    </td>
                    <td class="num-td">2</td>
                    <td>                                                          
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="rb1"/>
                        <p class="td-p">TRASPASO</p>
                    </td>
                    <td class="num-td">3</td>
                    <td>                                                          
                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="rb1"/>
                        <p class="td-p">TRASLADO<br>MATRÍCULA/<br>REGISTRO</p>
                    </td>
                    <td class="num-td">4</td>
                    <td>                                                          
                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="rb1"/> 
                        <p class="td-p">RADICADO<br>MATRÍCULA/<br>REGISTRO</p>
                    </td>
                    <td class="num-td">5</td>
                    <td>                                                          
                        <asp:RadioButton ID="RadioButton5" runat="server" GroupName="rb1"/>
                        <p class="td-p">CAMBIO DE<br>COLOR</p>
                    </td>
                    <td class="num-td">6</td>
                    <td>                                          
                        <asp:RadioButton  ID="RadioButton6" runat="server" GroupName="rb1"/>  
                        <p class="td-p">CAMBIO DE<br>SERVICIO</p>
                    </td>
                </tr>
                <tr>                
                    <td class="num-td">7</td>
                    <td>
                        <asp:RadioButton ID="RadioButton7" runat="server" GroupName="rb1"/>
                        <p class="td-p">REGRABAR<br>MOTOR</p>
                    </td>
                    <td class="num-td">8</td>
                    <td>                                                          
                        <asp:RadioButton ID="RadioButton8" runat="server" GroupName="rb1"/>
                        <p class="td-p">REGRABAR<br>CHASIS</p>
                    </td>
                    <td class="num-td">9</td>
                    <td>                                                          
                        <asp:RadioButton ID="RadioButton9" runat="server" GroupName="rb1"/>
                        <p class="td-p">TRANSFORMACIÓN</p>
                    </td>
                    <td class="num-td">10</td>
                    <td>                                                          
                        <asp:RadioButton ID="RadioButton10" runat="server" GroupName="rb1"/> 
                        <p class="td-p">DUPLICADO<br>LICENCIA/<br>TRANSITO</p>
                    </td>
                    <td class="num-td">11</td>
                    <td>                                                          
                        <asp:RadioButton ID="RadioButton11" runat="server" GroupName="rb1"/>
                        <p class="td-p">INSCRIPCION DE<br>PRENDA</p>
                    </td>
                    <td class="num-td">12</td>
                    <td>                                          
                        <asp:RadioButton  ID="RadioButton12" runat="server" GroupName="rb1"/>  
                        <p class="td-p">LEVANTA<br>PRENDA</p>
                    </td>
                </tr>
                <tr>                
                    <td class="num-td">13</td>
                    <td>
                        <asp:RadioButton ID="RadioButton13" runat="server" GroupName="rb1"/>
                        <p class="td-p">CANCELACIÓN<br>MATRÍCULA<br>REGISTRO</p>
                    </td>
                    <td class="num-td">14</td>
                    <td>                                                          
                        <asp:RadioButton ID="RadioButton14" runat="server" GroupName="rb1"/>
                        <p class="td-p">CAMBIO<br>DE PLACAS</p>
                    </td>
                    <td class="num-td">15</td>
                    <td>                                                          
                        <asp:RadioButton ID="RadioButton15" runat="server" GroupName="rb1"/>
                        <p class="td-p">DUPLICADO<br>DE PLACAS/<br>REGISTRO</p>
                    </td>
                    <td class="num-td">16</td>
                    <td>                                                          
                        <asp:RadioButton ID="RadioButton16" runat="server" GroupName="rb1"/> 
                        <p class="td-p">REMATRICULA/<br>REGISTRO</p>
                    </td>
                    <td class="num-td">17</td>
                    <td>                                                          
                        <asp:RadioButton ID="RadioButton17" runat="server" GroupName="rb1"/>
                        <p class="td-p">CAMBIO DE<br>CARROCERIA</p>
                    </td>
                    <td class="num-td">18</td>
                    <td>                                          
                        <asp:RadioButton  ID="RadioButton18" runat="server" GroupName="rb1"/>  
                        <p class="td-p">OTROS</p>
                    </td>
                </tr>
                               
            </table>
        </div>
        <div>
            <table style="width:100%">                
                <tr>               
                    <th colspan="7">4. CLASE DE VEHICULO</th>
                </tr>
                <tr>
                    <th>AUTOMOVIL</th>
                    <th>BUS</th>
                    <th>BUSETA</th>
                    <th>CAMION</th>
                    <th>CAMINETA</th>
                    <th>CAMPERO</th>
                    <th>MICROBUS</th>
                </tr>
                <tr>
                    <td> <asp:RadioButton ID="RadioButton19" runat="server" GroupName="rb2" Checked="True"/> </td>
                    <td> <asp:RadioButton ID="RadioButton20" runat="server" GroupName="rb2"/> </td>
                    <td> <asp:RadioButton ID="RadioButton21" runat="server" GroupName="rb2"/> </td>
                    <td> <asp:RadioButton ID="RadioButton22" runat="server" GroupName="rb2"/> </td>
                    <td> <asp:RadioButton ID="RadioButton23" runat="server" GroupName="rb2"/> </td>
                    <td> <asp:RadioButton ID="RadioButton24" runat="server" GroupName="rb2"/> </td>
                    <td> <asp:RadioButton ID="RadioButton25" runat="server" GroupName="rb2"/> </td>
                </tr>
                  <tr>
                    <th>TRACTOCAMION</th>
                    <th>MOTOCICLETA</th>
                    <th>MOTOCARRO</th>
                    <th>MOTOTRICICLO</th>
                    <th>CUATRIMOTO</th>
                    <th>VOLQUETA</th>
                    <th>OTRO</th>
                </tr>
                <tr>
                    <td> <asp:RadioButton ID="RadioButton26" runat="server" GroupName="rb2"/> </td>
                    <td> <asp:RadioButton ID="RadioButton27" runat="server" GroupName="rb2"/> </td>
                    <td> <asp:RadioButton ID="RadioButton28" runat="server" GroupName="rb2"/> </td>
                    <td> <asp:RadioButton ID="RadioButton29" runat="server" GroupName="rb2"/> </td>
                    <td> <asp:RadioButton ID="RadioButton30" runat="server" GroupName="rb2"/> </td>
                    <td> <asp:RadioButton ID="RadioButton31" runat="server" GroupName="rb2"/> </td>
                    <td> <asp:RadioButton ID="RadioButton32" runat="server" GroupName="rb2"/> </td>
                </tr>
            </table>
        </div>
        <div>
            <table style="width:100%">                
                <tr> <th>5. MARCA</th> </tr>
                <tr> <th> </th> </tr>
                <tr> 
                    <td> 
                        <asp:TextBox ID="tb_2a" runat="server" Width="100%"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="tb_2a" ErrorMessage="Campo requerido">Debe ingresar Letras de la Marca</asp:RequiredFieldValidator>                                                
                     </td>
                </tr>
            </table>
            <table style="width:100%">                
                <tr> <th>6. LINEA</th> </tr>
                <tr> <th> </th> </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="tb_2b" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="tb_2b" ErrorMessage="Campo requerido">Debe ingresar Letras de la Linea</asp:RequiredFieldValidator>                                                
                    </td> 
                </tr>
            </table>
            <table style="width:100%">                
                <tr> <th colspan="8">7. COMBUSTIBLE</th> </tr>
                <tr> 
                    <th>GASOLINA</th> 
                    <th>DIESEL</th> 
                    <th>GAS</th> 
                    <th>MIXTO</th> 
                    <th>ELECTRICO</th> 
                    <th>HIDROGENO</th> 
                    <th>ETANOL</th> 
                    <th>BIODISEL</th> 
                </tr>
                <tr> 
                    <td> <asp:RadioButton ID="RadioButton33" runat="server" GroupName="rb3" Checked="True"/> </td> 
                    <td> <asp:RadioButton ID="RadioButton34" runat="server" GroupName="rb3"/> </td>
                    <td> <asp:RadioButton ID="RadioButton35" runat="server" GroupName="rb3"/> </td>
                    <td> <asp:RadioButton ID="RadioButton36" runat="server" GroupName="rb3"/> </td>
                    <td> <asp:RadioButton ID="RadioButton37" runat="server" GroupName="rb3"/> </td>
                    <td> <asp:RadioButton ID="RadioButton38" runat="server" GroupName="rb3"/> </td>
                    <td> <asp:RadioButton ID="RadioButton39" runat="server" GroupName="rb3"/> </td>
                    <td> <asp:RadioButton ID="RadioButton40" runat="server" GroupName="rb3"/> </td>
                </tr>
            </table>
            <table style="width:100%">                
                <tr> <th>8. COLORES</th> </tr>
                <tr> 
                    <td> 
                        <asp:TextBox ID="tb_2c" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="tb_2c" ErrorMessage="Campo requerido">Debe ingresar el Color</asp:RequiredFieldValidator>                                                
                    </td>
                </tr>
            </table>
            <table style="width:100%">                
                <tr> <th>9. MODELO</th> </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="tb_2d" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="tb_2d" ErrorMessage="Campo requerido">Debe ingresar el Modelo</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <table style="width:100%">                
                <tr> <th>10. CILINDRADA</th> </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="tb_2e" type="Number" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="tb_2e" ErrorMessage="Campo requerido">Debe ingresar Cilindrada</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="tb_2e" ErrorMessage="*" Display="Dynamic" ValidationExpression="([0-9])*"> Digite Cilindrada</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
            <table style="width:100%">                
                <tr> <th>11. CAPACIDAD</th> </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="tb_2f" type="Number" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="tb_2f" ErrorMessage="Campo requerido">Debe ingresar Capacidad</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="tb_2f" ErrorMessage="*" Display="Dynamic" ValidationExpression="([0-9])*"> Digite Capacidad</asp:RegularExpressionValidator>
                    </td> </tr>
            </table>
             <table style="width:100%">                
                <tr> <th>12. BLINDAJE 
                        <asp:RadioButton ID="RadioButton41" runat="server" Text="Si" GroupName="rb4" Checked="True"/>
                        <asp:RadioButton ID="RadioButton42" runat="server" Text="No" GroupName="rb4"/>
                    </th> </tr>
                <tr> <td> <asp:TextBox ID="tb_2g" runat="server" Width="100%"></asp:TextBox> </td> </tr>
            </table>
            <table style="width:100%">                
                <tr> <th>13. DESMONTE BLIND 
                        <asp:RadioButton ID="RadioButton43" runat="server" Text="Si" GroupName="rb5" Checked="True"/>
                        <asp:RadioButton ID="RadioButton44" runat="server" Text="No" GroupName="rb5"/>
                    </th> </tr>
                <tr> <td> <asp:TextBox ID="tb_2h" runat="server" Width="100%"></asp:TextBox> </td> </tr>
            </table>
            <table style="width:100%">                
                <tr> <th>14. POTENCIA/HP</th> </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="tb_2i" type="Number" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="tb_2i" ErrorMessage="Campo requerido">Debe ingresar Potencia</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="tb_2i" ErrorMessage="*" Display="Dynamic" ValidationExpression="([0-9])*"> Digite Potencia</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table style="width:100%">                
                <tr> <th>15. CARROCERIA</th> </tr>
                <tr> <td>CÓDIGO</td> </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="tb_3a" type="Number" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="tb_3a" ErrorMessage="Campo requerido">Debe ingresar Codigo de Carroceria</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="tb_3a" ErrorMessage="*" Display="Dynamic" ValidationExpression="([0-9])*"> Digite Codigo, Solo Numeros</asp:RegularExpressionValidator>
                    </td></tr>
                <tr> <td>TIPO</td> </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="tb_3b" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="tb_3b" ErrorMessage="Campo requerido">Debe ingresar Tipo de Carroceria</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table style="width:100%">                
                <tr> <th colspan="2">16. IDENTIFICACIÓN INTERNA DEL VEHICULO</th> </tr>
                <tr> <td>No DEL MOTOR</td> <td>REGRABADO</td> </tr>
                <tr> 
                    <td> 
                        <asp:TextBox ID="tb_4a" type="Number" runat="server" Width="100%"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="tb_4a" ErrorMessage="Campo requerido">Debe ingresar No DEL MOTOR</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ControlToValidate="tb_4a" ErrorMessage="*" Display="Dynamic" ValidationExpression="([0-9])*"> Digite No VIN, Solo Numeros</asp:RegularExpressionValidator>
                    </td>
                     <td> <asp:RadioButton ID="RadioButton45" runat="server" Text="Si" GroupName="rb6" Checked="True"/>
                        <asp:RadioButton ID="RadioButton46" runat="server" Text="No" GroupName="rb6"/> </td></tr>
                <tr> <td>No. DE  CHASIS</td> <td>REGRABADO</td> </tr>
                <tr> 
                    <td> 
                        <asp:TextBox ID="tb_4b" type="Number" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="tb_4b" ErrorMessage="Campo requerido">Debe ingresar No. DE  CHASIS</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="tb_4b" ErrorMessage="*" Display="Dynamic" ValidationExpression="([0-9])*"> Digite No VIN, Solo Numeros</asp:RegularExpressionValidator>
                    </td>
                     <td> <asp:RadioButton ID="RadioButton47" runat="server" Text="Si" GroupName="rb7" Checked="True"/>
                        <asp:RadioButton ID="RadioButton48" runat="server" Text="No" GroupName="rb7"/> </td></tr>
                <tr> <td>No. DE SERIE</td> <td>REGRABADO</td> </tr>
                <tr> 
                    <td> 
                        <asp:TextBox ID="tb_4c" type="Number" runat="server" Width="100%"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="tb_4c" ErrorMessage="Campo requerido">Debe ingresar No DE SERIE</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="tb_4c" ErrorMessage="*" Display="Dynamic" ValidationExpression="([0-9])*"> Digite No VIN, Solo Numeros</asp:RegularExpressionValidator>
                    </td>
                     <td> <asp:RadioButton ID="RadioButton49" runat="server" Text="Si" GroupName="rb8" Checked="True"/>
                        <asp:RadioButton ID="RadioButton50" runat="server" Text="No" GroupName="rb8"/> </td></tr>
                <tr> <td colspan="2">No. DE VIN VEHÍCULOS AUTOMOTORES</td> </tr>
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="tb_4d" type="Number" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="tb_4d" ErrorMessage="Campo requerido">Debe ingresar No VIN</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="tb_4d" ErrorMessage="*" Display="Dynamic" ValidationExpression="([0-9])*"> Digite No VIN, Solo Numeros</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table style="width:100%">                
                <tr> <th colspan="6">17. IMPORTACIÓN O REMATE</th> </tr>
                <tr> <td colspan="2">IMPORTACIÓN</td> <td colspan="4">REMATE</td> </tr>
                <tr> 
                    <td>MANIF. O ACT <br/> <asp:RadioButton ID="RadioButton51" runat="server"  GroupName="rb9" Checked="True"/> </td> 
                    <td>DEC. DE IMPORT <br/> <asp:RadioButton ID="RadioButton52" runat="server" GroupName="rb9"/> </td> 
                    <td>ACTA <br/> 
                        <asp:TextBox ID="tb_5a" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="tb_5a" ErrorMessage="Campo requerido">Debe ingresar Acta</asp:RequiredFieldValidator>
                    </td> 
                    <td>ENTIDAD <br/> 
                        <asp:TextBox ID="tb_5b" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="tb_5b" ErrorMessage="Campo requerido">Debe ingresar Entidad</asp:RequiredFieldValidator>
                    </td>
                    <td>CIUDAD <br/> 
                        <asp:TextBox ID="tb_5c" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="tb_5c" ErrorMessage="Campo requerido">Debe ingresar Entidad</asp:RequiredFieldValidator>
                    </td> 
                    <td>CODIGO <br/> 
                        <asp:TextBox ID="tb_5d" type="Number" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="tb_5d" ErrorMessage="Campo requerido">Debe ingresar Codigo</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="tb_5d" ErrorMessage="*" Display="Dynamic" ValidationExpression="([0-9])*"> Digite Codigo, Solo Numeros</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr> <td colspan="3">No DOCUMENTO</td> <td colspan="3">FECHA</td> </tr>
                <tr> 
                    <td colspan="3" rowspan="2"> 
                        <asp:TextBox ID="tb_5e" type="Number" runat="server" Width="100%" Height="50px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="tb_5e" ErrorMessage="Campo requerido">Debe ingresar No DE DOCUMENTO</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator15" runat="server" ControlToValidate="tb_5e" ErrorMessage="*" Display="Dynamic" ValidationExpression="([0-9]){1,15}"> Digite No Documento, Solo Numeros</asp:RegularExpressionValidator>
                    </td>
                    <td>DIA</td> 
                    <td>MES</td>
                    <td>AÑO</td>
                </tr>
                <tr>                    
                    <td>
                        <asp:TextBox ID="tb_5f" type="Number" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="tb_5f" ErrorMessage="Campo requerido, debe ser númerico">Debe ingresar el Dia</asp:RequiredFieldValidator>                        
                        <asp:RangeValidator ID="RangeValidator3" ControlToValidate="tb_5f" Type="Integer" MinimumValue="1" MaximumValue="31" Display="Dynamic" ErrorMessage="Por favor ingrese Dia 1/31." runat="server"/>
                    </td> 
                    <td>
                        <asp:TextBox ID="tb_5g" type="Number" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="tb_5g" ErrorMessage="Campo requerido, debe ser númerico">Debe ingresar el Mes</asp:RequiredFieldValidator>                        
                        <asp:RangeValidator ID="RangeValidator4" ControlToValidate="tb_5g" Type="Integer" MinimumValue="1" MaximumValue="12" Display="Dynamic" ErrorMessage="Por favor ingrese Mes 1/12." runat="server"/>
                    </td>
                    <td>
                        <asp:TextBox ID="tb_5h" type="Number" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="tb_5h" ErrorMessage="Campo requerido, debe ser númerico">Debe ingresar el Año</asp:RequiredFieldValidator>                        
                        <asp:RangeValidator ID="RangeValidator5" ControlToValidate="tb_5h" Type="Integer" MinimumValue="1800" MaximumValue="3000" Display="Dynamic" ErrorMessage="Por favor ingrese Mes 1800/3000." runat="server"/>
                    </td>
                </tr>
            </table>
        </div>
        <div>
              <table style="width:100%">                
                <tr> <th colspan="6">18. TIPO DE SERVICIO</th> </tr>
                <tr> <td>PARTICULAR</td> <td>PÚBLICO</td> <td>DIPLOMATICO</td> <td>OFICIAL</td> <td>ESPECIAL</td> <td>OTROS</td> </tr>
                <tr>
                    <td> <asp:RadioButton ID="RadioButton53" runat="server"  GroupName="rb10" Checked="True"/> </td> 
                    <td> <asp:RadioButton ID="RadioButton54" runat="server" GroupName="rb10"/> </td>
                    <td> <asp:RadioButton ID="RadioButton55" runat="server" GroupName="rb10"/> </td>
                    <td> <asp:RadioButton ID="RadioButton56" runat="server" GroupName="rb10"/> </td>
                    <td> <asp:RadioButton ID="RadioButton57" runat="server" GroupName="rb10"/> </td>
                    <td> <asp:RadioButton ID="RadioButton58" runat="server" GroupName="rb10"/> </td>
                </tr>
                <tr> <th colspan="6">19. EMPRESA VINCULADORA</th> </tr>
                <tr> <td colspan="3">NOMBRE</td> <td colspan="3">NIT</td> </tr>
                <tr>  
                    <td colspan="3"> 
                        <asp:TextBox ID="tb_6a" runat="server" Width="100%"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ControlToValidate="tb_6a" ErrorMessage="Campo requerido">Debe ingresar Nombre</asp:RequiredFieldValidator>    
                    </td>
                    <td colspan="3"> 
                        <asp:TextBox ID="tb_6b" type="Number" runat="server" Width="100%"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ControlToValidate="tb_6b" ErrorMessage="Campo requerido, debe ser númerico">Debe ingresar NIT</asp:RequiredFieldValidator>                        
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server" ControlToValidate="tb_6b" ErrorMessage="*" ValidationExpression="([0-9])*">Solo numero</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table style="width:100%">                
                <tr> <th colspan="5">20. DATOS DE ALERTA</th> </tr>
                <tr> <td>HURTO</td> <td>LIM. PROPIEDAD</td> <td>EMBARGO</td> <td>OTRO</td> <td>A FAVOR DE</td> </tr>
                <tr>
                    <td> <asp:RadioButton ID="RadioButton59" runat="server"  GroupName="rb11" Checked="True"/> </td> 
                    <td> <asp:RadioButton ID="RadioButton60" runat="server" GroupName="rb11"/> </td>
                    <td> <asp:RadioButton ID="RadioButton61" runat="server" GroupName="rb11"/> </td>
                    <td> <asp:RadioButton ID="RadioButton62" runat="server" GroupName="rb11"/> </td>
                    <td> <asp:RadioButton ID="RadioButton63" runat="server" GroupName="rb11"/> </td>
                </tr>
            </table>
        </div>
        <div>
            <table style="width:100%">                
                <tr> <th colspan="9">21. DATOS DEL PROPIETARIO</th> </tr>
                <tr> <td colspan="3">PRIMER APELLIDO</td> <td colspan="3">SEGUNDO APELLIDO</td> <td colspan="3">NOMBRES</td> </tr>
                <tr>
                    <td colspan="3"> 
                        <asp:TextBox ID="tb_7a" runat="server" Width="100%"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ControlToValidate="tb_7a" ErrorMessage="Campo requerido">Debe ingresar Primer Apellido</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator17" runat="server" ControlToValidate="tb_7a" ErrorMessage="*" Display="Dynamic" ValidationExpression="([a-z]|[A-Z])*"> Digite solo letras</asp:RegularExpressionValidator>
                    </td>
                    <td colspan="3"> 
                        <asp:TextBox ID="tb_7b" runat="server" Width="100%"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ControlToValidate="tb_7b" ErrorMessage="Campo requerido">Debe ingresar Segundo Apellido</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator18" runat="server" ControlToValidate="tb_7b" ErrorMessage="*" Display="Dynamic" ValidationExpression="([a-z]|[A-Z])*"> Digite solo letras</asp:RegularExpressionValidator>
                    </td>
                    <td colspan="3"> 
                        <asp:TextBox ID="tb_7c" runat="server" Width="100%"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ControlToValidate="tb_7c" ErrorMessage="Campo requerido">Debe ingresar Nombre</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator19" runat="server" ControlToValidate="tb_7c" ErrorMessage="*" Display="Dynamic" ValidationExpression="([a-z]|[A-Z])*"> Digite solo letras</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr> <td>C.C.</td> <td>NIT</td> <td>NN</td> <td>PASAPORTE</td> <td>C. EXTRANJ.</td> <td>T. IDENTI.</td> <td>NUIP</td> <td>C. DIPLOMÁTICO</td> <td>No. DOCUMENTO</td> </tr>
                <tr>
                    <td> <asp:RadioButton ID="RadioButton64" runat="server"  GroupName="rb12" Checked="True"/> </td> 
                    <td> <asp:RadioButton ID="RadioButton65" runat="server" GroupName="rb12"/> </td>
                    <td> <asp:RadioButton ID="RadioButton66" runat="server" GroupName="rb12"/> </td>
                    <td> <asp:RadioButton ID="RadioButton67" runat="server" GroupName="rb12"/> </td>
                    <td> <asp:RadioButton ID="RadioButton68" runat="server" GroupName="rb12"/> </td>
                    <td> <asp:RadioButton ID="RadioButton69" runat="server" GroupName="rb12"/> </td>
                    <td> <asp:RadioButton ID="RadioButton70" runat="server" GroupName="rb12"/> </td>
                    <td> <asp:RadioButton ID="RadioButton71" runat="server" GroupName="rb12"/> </td>
                    <td> <asp:TextBox ID="tb_7d" runat="server" Width="100%" type="Number" min="1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_7d" ErrorMessage="Campo requerido, debe ser númerico">Debe ingresar su número de documento</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_7d" ErrorMessage="*" ValidationExpression="([0-9])*">Solo numero</asp:RegularExpressionValidator>
                    </td>
                </tr>               
                <tr> <td colspan="3">DIRECCÍÓN</td> <td colspan="3">CIUDAD</td> <td colspan="3">TELÉFONO</td> </tr>
                <tr>
                    <td colspan="3"> 
                        <asp:TextBox ID="tb_7e" runat="server" Width="100%"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ControlToValidate="tb_7e" ErrorMessage="Campo requerido">Debe ingresar Dirección</asp:RequiredFieldValidator>
                    </td>
                    <td colspan="3"> 
                        <asp:TextBox ID="tb_7f" runat="server" Width="100%"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ControlToValidate="tb_7f" ErrorMessage="Campo requerido">Debe ingresar Ciudad</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator20" runat="server" ControlToValidate="tb_7f" ErrorMessage="*" Display="Dynamic" ValidationExpression="([a-z]|[A-Z])*"> Digite solo letras</asp:RegularExpressionValidator>
                    </td>

                    <td colspan="3"> 
                        <asp:TextBox ID="tb_7g" runat="server" Width="100%" TextMode="Phone"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_7g" ErrorMessage="Campo requerido, debe ser númerico">Debe ingresar su número de telefono</asp:RequiredFieldValidator>                        
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tb_7g" ErrorMessage="*" ValidationExpression="([0-9])*">Solo numero</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr> <th colspan="9">FIRMA DEL PROPIETARIO</th> </tr>              
                <tr>                    
                    <td colspan="9"> 
                        <asp:TextBox ID="tb_7h" runat="server" Width="100%"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ControlToValidate="tb_7h" ErrorMessage="Campo requerido">Debe ingresar Firma</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator21" runat="server" ControlToValidate="tb_7h" ErrorMessage="*" Display="Dynamic" ValidationExpression="([a-z]|[A-Z])*"> Digite solo letras</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table style="width:100%">                
                <tr> <th colspan="9">22. DATOS DEL COMPRADOR (TRASPASO)</th> </tr>
                <tr> <td colspan="3">PRIMER APELLIDO</td> <td colspan="3">SEGUNDO APELLIDO</td> <td colspan="3">NOMBRES</td> </tr>
                <tr>
                    <td colspan="3"> 
                        <asp:TextBox ID="tb_8a" runat="server" Width="100%"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" ControlToValidate="tb_8a" ErrorMessage="Campo requerido">Debe ingresar Primer Apellido</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator27" runat="server" ControlToValidate="tb_8a" ErrorMessage="*" Display="Dynamic" ValidationExpression="([a-z]|[A-Z])*"> Digite solo letras</asp:RegularExpressionValidator>
                    </td>
                    <td colspan="3"> 
                        <asp:TextBox ID="tb_8b" runat="server" Width="100%"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" ControlToValidate="tb_8b" ErrorMessage="Campo requerido">Debe ingresar Segundo Apellido</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator28" runat="server" ControlToValidate="tb_8b" ErrorMessage="*" Display="Dynamic" ValidationExpression="([a-z]|[A-Z])*"> Digite solo letras</asp:RegularExpressionValidator>
                    </td>
                    <td colspan="3"> 
                        <asp:TextBox ID="tb_8c" runat="server" Width="100%"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" ControlToValidate="tb_8c" ErrorMessage="Campo requerido">Debe ingresar Nombre</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator29" runat="server" ControlToValidate="tb_8c" ErrorMessage="*" Display="Dynamic" ValidationExpression="([a-z]|[A-Z])*"> Digite solo letras</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr> <td>C.C.</td> <td>NIT</td> <td>NN</td> <td>PASAPORTE</td> <td>C. EXTRANJ.</td> <td>T. IDENTI.</td> <td>NUIP</td> <td>C. DIPLOMÁTICO</td> <td>No. DOCUMENTO</td> </tr>
                <tr>
                    <td> <asp:RadioButton ID="RadioButton72" runat="server"  GroupName="rb13" Checked="True"/> </td> 
                    <td> <asp:RadioButton ID="RadioButton73" runat="server" GroupName="rb13"/> </td>
                    <td> <asp:RadioButton ID="RadioButton74" runat="server" GroupName="rb13"/> </td>
                    <td> <asp:RadioButton ID="RadioButton75" runat="server" GroupName="rb13"/> </td>
                    <td> <asp:RadioButton ID="RadioButton76" runat="server" GroupName="rb13"/> </td>
                    <td> <asp:RadioButton ID="RadioButton77" runat="server" GroupName="rb13"/> </td>
                    <td> <asp:RadioButton ID="RadioButton78" runat="server" GroupName="rb13"/> </td>
                    <td> <asp:RadioButton ID="RadioButton79" runat="server" GroupName="rb13"/> </td>
                    <td> 
                        <asp:TextBox ID="tb_8d" runat="server" Width="100%"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" ControlToValidate="tb_8d" ErrorMessage="Campo requerido, debe ser númerico">Debe ingresar su número de documento</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator24" runat="server" ControlToValidate="tb_8d" ErrorMessage="*" ValidationExpression="([0-9])*">Solo numero</asp:RegularExpressionValidator>
                    </td>
                </tr>               
                <tr> <td colspan="3">DIRECCÍÓN</td> <td colspan="3">CIUDAD</td> <td colspan="3">TELÉFONO</td> </tr>
                <tr>
                    <td colspan="3"> 
                        <asp:TextBox ID="tb_8e" runat="server" Width="100%"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" ControlToValidate="tb_8e" ErrorMessage="Campo requerido">Debe ingresar Dirección</asp:RequiredFieldValidator>
                    </td>
                    <td colspan="3"> 
                        <asp:TextBox ID="tb_8f" runat="server" Width="100%"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" ControlToValidate="tb_8f" ErrorMessage="Campo requerido">Debe ingresar Ciudad</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator25" runat="server" ControlToValidate="tb_8f" ErrorMessage="*" Display="Dynamic" ValidationExpression="([a-z]|[A-Z])*"> Digite solo letras</asp:RegularExpressionValidator>
                    </td>
                    <td colspan="3"> 
                        <asp:TextBox ID="tb_8g" runat="server" Width="100%" TextMode="Phone"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" ControlToValidate="tb_8g" ErrorMessage="Campo requerido, debe ser númerico">Debe ingresar su número de telefono</asp:RequiredFieldValidator>                        
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator26" runat="server" ControlToValidate="tb_8g" ErrorMessage="*" ValidationExpression="([0-9])*">Solo numero</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr> <th colspan="9">FIRMA DEL COMPRADOR</th> </tr>              
                <tr>                    
                    <td colspan="9"> 
                        <asp:TextBox ID="tb_8h" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" ControlToValidate="tb_8h" ErrorMessage="Campo requerido">Debe ingresar Firma</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator23" runat="server" ControlToValidate="tb_8h" ErrorMessage="*" Display="Dynamic" ValidationExpression="([a-z]|[A-Z])*"> Digite solo letras</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table style="width:100%">                
                <tr> <th>23. OBSERVACIONES</th> </tr>
                <tr> <td>ESPECIFIQUE LA PALABRA OTRO Y TRANSFORMACIÓN EFECTUADA AL VEHÍCULO, AMPLÍE EL TIPO DE ALERTA O LO QUE ESTIME</td> </tr>
                <tr> 
                    <td>
                        <asp:TextBox ID="tb_9a" runat="server" Width="100%" > </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" ControlToValidate="tb_9a" ErrorMessage="Campo requerido">Debe ingresar Observaciones</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator22" runat="server" ControlToValidate="tb_9a" ErrorMessage="*" Display="Dynamic" ValidationExpression="([a-z]|[A-Z])*"> Digite solo letras</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr> <td></td> </tr>
                <tr> <th>OBSERVACIONES (PARA TRASPASO DE VEHÍCULOS AUTOMOTORES ANTES DE RUNT)</th> </tr>
                <tr> <td>SI SU VEHÍCULO AUTOMOTOR HA SIDO MATRICULADO ANTES DEL RUNT TRANSCRIBA EN ESTE CAMPO EL TIPO DE CARROCERÍA Y<br/>
                        LA CLASE DE VEHÍCULO QUE SE ENCUENTRA REGISTRADA EN SU LICENCIA DE TRÁNSITO O CUALQUIER OTRO ASPECTO QUE<br/>
                        CONSIDERE NECESARIO PARA DAR EXACTITUD A LA INFORMACIÓN.</td> </tr>
            </table>
        </div>

        <div>
            <asp:Button ID="Button" class="btn btn-success marging" runat="server" OnClick="Button_Click" Text="Enviar" />
        </div>
    </div>
    </form>
</body>
</html>
