<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Xpo.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>How to edit color by using the ASPxColorEdit</title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="xds"
				KeyFieldName="Oid" OnRowUpdating="grid_RowUpdating"
				OnHtmlDataCellPrepared="grid_HtmlDataCellPrepared" OnRowInserting="grid_RowInserting">
				<Columns>
                    <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True" ShowNewButton="True"/>
					<dx:GridViewDataTextColumn FieldName="Oid" ReadOnly="True" VisibleIndex="1" SortOrder="Ascending" SortIndex="0">
						<EditFormSettings Visible="False" />
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="Title" VisibleIndex="2">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="DxColor" VisibleIndex="3">
						<EditItemTemplate>
							<dx:ASPxColorEdit ID="colorEdit" runat="server" Color='<%#GetColor(Eval("DxColor"))%>' />
						</EditItemTemplate>
					</dx:GridViewDataTextColumn>
				</Columns>
			</dx:ASPxGridView>
			<dx:XpoDataSource ID="xds" runat="server" TypeName="MyObject">
			</dx:XpoDataSource>
		</div>
	</form>
</body>
</html>