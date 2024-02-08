<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="SchoolManagement.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CourseID" DataSourceID="SqlDataSource1" style="z-index: 1; left: 10px; top: 15px; position: absolute; height: 133px; width: 187px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="CourseID" HeaderText="CourseID" ReadOnly="True" SortExpression="CourseID" />
            <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
            <asp:BoundField DataField="TeacherID" HeaderText="TeacherID" SortExpression="TeacherID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SchoolManagementConnectionString %>" DeleteCommand="DELETE FROM [Courses] WHERE [CourseID] = @original_CourseID AND (([CourseName] = @original_CourseName) OR ([CourseName] IS NULL AND @original_CourseName IS NULL)) AND (([TeacherID] = @original_TeacherID) OR ([TeacherID] IS NULL AND @original_TeacherID IS NULL))" InsertCommand="INSERT INTO [Courses] ([CourseID], [CourseName], [TeacherID]) VALUES (@CourseID, @CourseName, @TeacherID)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:SchoolManagementConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Courses]" UpdateCommand="UPDATE [Courses] SET [CourseName] = @CourseName, [TeacherID] = @TeacherID WHERE [CourseID] = @original_CourseID AND (([CourseName] = @original_CourseName) OR ([CourseName] IS NULL AND @original_CourseName IS NULL)) AND (([TeacherID] = @original_TeacherID) OR ([TeacherID] IS NULL AND @original_TeacherID IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_CourseID" Type="Int32" />
            <asp:Parameter Name="original_CourseName" Type="String" />
            <asp:Parameter Name="original_TeacherID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CourseID" Type="Int32" />
            <asp:Parameter Name="CourseName" Type="String" />
            <asp:Parameter Name="TeacherID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CourseName" Type="String" />
            <asp:Parameter Name="TeacherID" Type="Int32" />
            <asp:Parameter Name="original_CourseID" Type="Int32" />
            <asp:Parameter Name="original_CourseName" Type="String" />
            <asp:Parameter Name="original_TeacherID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
