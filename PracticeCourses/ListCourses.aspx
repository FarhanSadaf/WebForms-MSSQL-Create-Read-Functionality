<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListCourses.aspx.cs" Inherits="PracticeCourses.ListCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <h1 class="text-center">All courses</h1>

        <div class="row">
            <div class="col-md-8 mx-auto">
                <asp:GridView ID="CoursesGridView" CssClass="table" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="ID" />
                        <asp:BoundField DataField="Code" HeaderText="Code" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Year" HeaderText="Year" />
                        <asp:BoundField DataField="Term" HeaderText="Term" />
                        <asp:BoundField DataField="Teacher1" HeaderText="Course Teacher 1" />
                        <asp:BoundField DataField="Teacher2" HeaderText="Course Teacher 2" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
