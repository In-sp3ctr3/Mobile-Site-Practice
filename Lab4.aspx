<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lab4.aspx.cs" Inherits="Lab4.Lab4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>School</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
   <link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V"crossorigin="anonymous"/>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="Layers/StyleSheet2.css" type="text/css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="JavaScript.js"></script>
</head>
<body>
<div class="Layer1">
    <div class="Layer2">
        <div class="Layer3 make-it-fast">
    <form id="form1" runat="server">
        <div id="divMain" class="div text-center pb-3" runat="server">
            <br />
             <div class="btn btn-warning mb-3"> 
            <i class="bi bi-gear-fill" aria-hidden="true"></i>
            <button class="btn_asp_icon" runat="server" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
    Maintenance
  </button>
                 </div>
            <div class="collapse" id="collapseExample" runat="server">
            <div class="btn btn-warning mb-3"> 
            <i class="bi bi-caret-right-square-fill" aria-hidden="true"></i>
            <asp:Button ID="Button1"  CssClass="btn_asp_icon" runat="server" Text="Student Maintenance" OnClick="Button1_Click"/>
            </div>
            <br />
             <div class="btn btn-warning mb-3"> 
             <i class="bi bi-caret-right-square-fill" aria-hidden="true"></i>
            <asp:Button ID="Button2" CssClass="btn_asp_icon" runat="server" Text="Module Maintenance" OnClick="Button2_Click" />
            </div>
            <br />
            <div class="btn btn-warning mb-3"> 
             <i class="bi bi-caret-right-square-fill" aria-hidden="true"></i>
            <asp:Button ID="Button8" CssClass="btn_asp_icon" runat="server" Text="Lecturer Maintenance" OnClick="Button8_Click" />
            </div>
                </div>
            <br />
            <div class="btn btn-warning mb-3"> 
             <i class="bi bi-caret-right-square-fill" aria-hidden="true"></i>
            <asp:Button ID="Button3" CssClass="btn_asp_icon" runat="server" Text="Module Info" OnClick="Button3_Click" />
             </div>
            </div>
        <div id="ModuleInfo" class="card-body mt-3 bg-dark" runat="server"> <div class="text-end" runat="server" OnClick="b"> <span"><i class="bi bi-x-circle-fill text-danger bi-lg"></i></span></div>
        <div class="mb-3" runat="server">
            <asp:Label ID="Title" Class="h3 text-white" runat="server" Text="Modules"></asp:Label>
        </div>
            
             <asp:GridView ID="GridView_ModuleInfo" class="text-white mb-3" BorderStyle="None" AutoGenerateColumns="false" runat="server">
                <Columns>
                 <asp:TemplateField>
                     <ItemTemplate>
                       <asp:Button ID="student_info_select_button" CssClass="btn btn-warning" runat="server" Text="Select" OnClick="student_info_select_button_Click"/>  
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:BoundField DataField="student num" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="Stud num" />
                 <asp:BoundField DataField="first name" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="Stud num" />
                <asp:BoundField DataField="last name" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="Last Name" />
                </Columns>
            </asp:GridView>
            <asp:TextBox ID="info_modules_hidden" Visible="false" runat="server"></asp:TextBox>
           
             
            <asp:GridView ID="GridView_Modules_Info" class="text-white mb-3" BorderStyle="None" AutoGenerateColumns="false" runat="server">
                <Columns>
                 <asp:TemplateField>
                     <ItemTemplate>
                       <asp:Button ID="module_info_select_button" CssClass="btn btn-warning" runat="server" Text="Select" OnClick="module_info_select_button_Click" />
                     </ItemTemplate>
                 </asp:TemplateField>
                <asp:BoundField DataField="module num" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="Module Code" />
                 <asp:BoundField DataField="module code" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="Module Code" />
                   
                </Columns>
            </asp:GridView>
             <div id="Not_Registered" class="alert alert-danger" role="alert" runat="server">
               Not Registered For Any Modules
                    </div>
            <asp:TextBox ID="ModulesDrop_Hidden" Visible="false" runat="server"></asp:TextBox>
       
          <div class="mb-3">
        <asp:Label ID="Label2" Class="form-label text-white" runat="server" Text="Lecturer:  "></asp:Label>    
              <asp:Label ID="lecturer" Class="font-weight-light" runat="server" Text="Label"></asp:Label>
              <asp:Label ID="email" Class="font-weight-light" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="mb-3">
        <asp:Label ID="Label3" Class="form-label text-white " runat="server" Text="Faculty/School:  "></asp:Label>    
              <asp:Label ID="faculty" Class="font-weight-light " runat="server" Text="Label"></asp:Label>
        </div>

         <div class="mb-3">
        <asp:Label ID="Label4" Class="form-label text-white" runat="server" Text="Classmates"></asp:Label>    
            <asp:DropDownList ID="RegisteredStudents" DataTextField="student" DataValueField="student" runat="server"></asp:DropDownList>
        </div>
        </div>
        
        <div id="Lecturer_Div" style="
    width: max-content;
" class="card-body rounded text-center bg-dark mb-3" runat="server">
            <div class="mb-3">
            <asp:Label ID="Label1" runat="server" CssClass="text-white" Text="Lecturers"></asp:Label>
            </div>
             <div id="Lecturer_NoName" class="alert alert-danger" role="alert" runat="server">
               Please input a full name!
            </div>
             <div id="Lecturer_TooLong" class="alert alert-danger" role="alert" runat="server">
               First and Last Names must be between 3 to 15 Characters!
            </div>
             <div id="Lecturer_validEmail" class="alert alert-danger" role="alert" runat="server">
               Not a valid email!
            </div>
            <div id="Lecturer_Success" class="alert alert-success" role="alert" runat="server">
               Successfully Completed
            </div>
              
            <asp:GridView ID="Gridview_Lect" class="text-white mb-3" BorderStyle="None" AutoGenerateColumns="false" runat="server">
                <Columns>
                 <asp:TemplateField>
                     <ItemTemplate>
                        <asp:Button ID="Lect_select_button" CssClass="btn btn-warning" runat="server" Text="Select" OnClick="Lect_select_button_Click" />
                     </ItemTemplate>
                 </asp:TemplateField>
                    <asp:TemplateField>
                     <ItemTemplate>
                      
                           <asp:Button ID="Lect_editbutton" CssClass="btn btn-secondary" runat="server" Text="Edit" OnClick="Lect_editbutton_Click"/>
              
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:BoundField DataField="lecturer num" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="Lecturer Num" />
                <asp:BoundField DataField="lecturer first name" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="First Name" />
                <asp:BoundField DataField="lecturer lastname" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="Last Name"/>
                    <asp:BoundField DataField="lecturer email" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="Email"/>
                </Columns>
            </asp:GridView>
            <asp:TextBox ID="Lect_box_hidden" Visible="false" runat="server"></asp:TextBox>

    
            <div class="mb-3">
            <asp:Label ID="Label8" CssClass="text-white" runat="server" Text="First Name"></asp:Label>
            </div>
            <div class="mb-3">
            <asp:TextBox ID="Lect_fname" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
            <asp:Label ID="Label9" CssClass="text-white" runat="server" Text="Last Name"></asp:Label>
            </div>
            <div class="mb-3">
            <div class="mb-3">
             <asp:TextBox ID="Lect_lname" runat="server"></asp:TextBox>
            </div>
            <asp:Label ID="Label10" CssClass="text-white" runat="server" Text="Email"></asp:Label>
            </div>
            <div class="mb-3">
             <asp:TextBox ID="Lect_email" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3 text-center">
            <asp:Button ID="Button9" CssClass="btn btn-secondary" runat="server" Text="New" OnClick="Button9_Click"  />    
            <asp:Button ID="Button10" CssClass="btn btn-secondary" runat="server" Text="Add" OnClick="Button10_Click" /> 
            <asp:Button ID="Button11" CssClass="btn btn-secondary" runat="server" Text="Update" OnClick="Button11_Click" />
        </div>
            </div>
        <div id="StudentMaintenance" style="
    width: max-content;
" class="card-body rounded text-center bg-dark mb-3" runat="server">
            <div class="mb-3">
            <asp:Label ID="Label5" runat="server" CssClass="text-white" Text="Student"></asp:Label>
            </div>
             <div id="StudentNoBlanks" class="alert alert-danger" role="alert" runat="server">
               Please input a full name!
            </div>
             <div id="StudentTooLong" class="alert alert-danger" role="alert" runat="server">
               First and Last Names must be between 3 to 15 Characters!
            </div>
            <div id="StudentSuccess" class="alert alert-success" role="alert" runat="server">
               Successfully Completed
            </div>
            
            <asp:GridView ID="GridView1" class="text-white mb-3" BorderStyle="None" AutoGenerateColumns="false" runat="server">
                <Columns>
                 <asp:TemplateField>
                     <ItemTemplate>
                         <asp:Button ID="select_button" CssClass="btn btn-warning" runat="server" Text="Select" OnClick="select_button_Click" />
                     </ItemTemplate>
                 </asp:TemplateField>
                    <asp:TemplateField>
                     <ItemTemplate>
                      
                            <asp:Button ID="Button4" CssClass="btn btn-secondary" runat="server" Text="Edit" OnClick="Button4_Click" />
              
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:BoundField DataField="student num" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="Stud num" />
                <asp:BoundField DataField="last name" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="Last Name" />
                <asp:BoundField DataField="first name" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="First Name"/>
                </Columns>
            </asp:GridView>
            <asp:TextBox ID="TextBox_hidden" Visible="false" runat="server"></asp:TextBox>
            <div class="mb-3">
            <asp:DropDownList ID="DropDownList2" Visible="false" CssClass="w-100" DataTextField="student" DataValueField="student num" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" ></asp:DropDownList>
            </div>
    
            <div class="mb-3">
            <asp:Label ID="Label6" CssClass="text-white" runat="server" Text="First Name"></asp:Label>
            </div>
            <div class="mb-3">
            <asp:TextBox ID="StudFname" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
            <asp:Label ID="Label7" CssClass="text-white" runat="server" Text="Last Name"></asp:Label>
            </div>
            <div class="mb-3">
             <asp:TextBox ID="StudLname" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3 text-center">
            <asp:Button ID="Button5" CssClass="btn btn-secondary" runat="server" Text="New" OnClick="Button5_Click" />    
            <asp:Button ID="Button6" CssClass="btn btn-secondary" runat="server" Text="Add" OnClick="Button6_Click" /> 
            <asp:Button ID="Button7" CssClass="btn btn-secondary" runat="server" Text="Update" OnClick="Button7_Click" />
        </div>
            </div>

        <div id="ModuleDiv" class="card-body rounded text-center bg-dark mb-3" runat="server">
            <div class="mb-3">
            <asp:Label ID="TitleModule" runat="server" CssClass="text-white" Text="Module"></asp:Label>
            </div>
            <div id="ModuleNoBlanks" class="alert alert-danger" role="alert" runat="server">
               Please input a Module Code
            </div>
             <div id="ModuleTooLong" class="alert alert-danger" role="alert" runat="server">
               Module Code must be between 4 to 10 Characters!
            </div>
            <div id="ModuleDuplicate" class="alert alert-danger" role="alert" runat="server">
               Module Code already exists!
            </div>
            <div id="ModuleSuccess" class="alert alert-success" role="alert" runat="server">
               Successfully Completed
            </div>

            <asp:GridView ID="GridView_modules" class="text-white mb-3" BorderStyle="None" AutoGenerateColumns="false" runat="server">
                <Columns>
                 <asp:TemplateField>
                     <ItemTemplate>
                                                              <asp:Button ID="Modules_select_button" CssClass="btn btn-warning" runat="server" Text="Select" AutoPostBack="true" OnClick="Modules_select_button_Click" />

                     </ItemTemplate>
                 </asp:TemplateField>
                    <asp:TemplateField>
                     <ItemTemplate>
                 
            <asp:Button ID="ModuleEdit" CssClass="btn btn-secondary" runat="server" Text="Edit" AutoPostBack="true" OnClick="ModuleEdit_Click"/>
          
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:BoundField DataField="module num" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="Module num" />
                <asp:BoundField DataField="module code" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="Module Name" />
                </Columns>
            </asp:GridView>
            <asp:TextBox ID="Module_TextBox_hidden" Visible="false" runat="server"></asp:TextBox>
           
            <div class="mb-3">
            <asp:DropDownList ID="ModuleList2" Visible="false" CssClass="w-100" DataTextField="module code" DataValueField="module num" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ModuleList2_SelectedIndexChanged"></asp:DropDownList>
            </div>
            
            <div class="mb-3">
            <asp:Label  CssClass="text-white" runat="server" Text="Module Code"></asp:Label>
            </div>
            <div class="mb-3">
            <asp:TextBox ID="ModuleName" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
            <asp:Label  CssClass="text-white" runat="server" Text="Lecturer"></asp:Label>
            </div>
            <div class="mb-3">
                <asp:DropDownList ID="LecturerList" DataTextField="lecturer" DataValueField="lecturer num" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
            <asp:Label  CssClass="text-white" runat="server" Text="Faculty"></asp:Label>
            </div>
            <div class="mb-3">
                <asp:DropDownList ID="FacultyList" DataTextField="fc name" DataValueField="fc num" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3 text-center">
            <asp:Button ID="ModuleNew" CssClass="btn btn-secondary" runat="server" Text="New" OnClick="ModuleNew_Click"/>    
            <asp:Button ID="ModuleAdd" CssClass="btn btn-secondary" runat="server" Text="Add" OnClick="ModuleAdd_Click"  /> 
            <asp:Button ID="ModuleUpdate" CssClass="btn btn-secondary" runat="server" Text="Update" OnClick="ModuleUpdate_Click"/>
        </div>
            </div>
    </form>
</div>
 </div>
    </div>
    <div class="loader-wrapper" >
    <span class="loader"><span class="loader-inner"></span></span>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script>
        $(window).on("load", function () {
            $(".loader-wrapper").fadeOut(2500);
        });
    </script>
</body> 
</html>
