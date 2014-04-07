<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Route.aspx.cs" Inherits="WebApplication1.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBYZsg2jaedlY7r481YSuUpc5WMSZNH9aU&sensor=false">
    </script>

    <script>

        var directionsDisplay;
        var directionsService = new google.maps.DirectionsService();

        function InitializeMap() {
            directionsDisplay = new google.maps.DirectionsRenderer();
            var latlng = new google.maps.LatLng(-34.397, 150.644);
            var myOptions =
            {
                zoom: 8,
                center: latlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("map"), myOptions);

            directionsDisplay.setMap(map);
            directionsDisplay.setPanel(document.getElementById('directionpanel'));

            var control = document.getElementById('control');
            control.style.display = 'block';


        }
        function calcRoute() {

            var start = document.getElementById('startvalue').value;
            var end = document.getElementById('endvalue').value;
                                

            document.getElementById("<%=hiddenfield.ClientID%>").value = start + end;
            var request = {
                origin: start,
                destination: end,
                travelMode: google.maps.DirectionsTravelMode.DRIVING
            };
            directionsService.route(request, function (response, status) {
                if (status == google.maps.DirectionsStatus.OK) {
                    directionsDisplay.setDirections(response);
                }
            });


        }

        function Button1_onclick() {
            calcRoute();
        }

        window.onload = InitializeMap;

    </script>

    <table id="control">
        <tr>
            <td>
                <table>
                    <tr>
                        <h1>My Maps</h1>
                    </tr>
                    <tr>
                        <td>From:</td>
                        <td>
                            <input id="startvalue" type="text" style="width: 305px" /></td>
                    </tr>
                    <tr>
                        <td>To:</td>
                        <td>
                            <input id="endvalue" type="text" style="width: 301px" /></td>
                    </tr>
                    <tr>
                        <td align="right">
                            <%--<asp:Button runat="server" ID="btnDirections" OnClientClick="return Button1_onclick()" OnClick="btnDirections_Click" Text="Get Directions"/>--%>
                            <input id="Button1" type="button" value="GetDirections" onclick="return Button1_onclick()" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <div id="directionpanel" style="height: 390px; overflow: auto"></div>
            </td>
            <td valign="top">
                <div id="map" style="height: 390px; width: 489px"></div>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HiddenField runat="server" ID="hiddenfield" />
            </td>
        </tr>
    </table>

</asp:Content>
