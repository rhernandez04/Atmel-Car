﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;

namespace AtmelCar
{
    public partial class _Default : System.Web.UI.Page
    {
        public int sendPort = 12000;
        public int receivePort = 12000;
        public string ip = "76.101.97.91";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void getStatus()
        {
            try
            {
                using (Socket sock = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp))
                {
                    using (TcpClient receivingTcpClient = new TcpClient(ip, receivePort))
                    {
                        receivingTcpClient.Client.ReceiveTimeout = 5000;
                        System.Threading.Thread.Sleep(150);
                    }

                }
            }
            catch (Exception)
            {

            }
        }

        public void sendCommand(string msg)
        {
            using (Socket sock = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp))
            {
                using (TcpClient sendingTcpClient = new TcpClient(ip, sendPort))
                {
                    try
                    {
                        NetworkStream stream = sendingTcpClient.GetStream();
                        IPAddress serverAddress = IPAddress.Parse(ip);
                        IPEndPoint endPoint = new IPEndPoint(serverAddress, sendPort);
                        byte[] send_buffer = Encoding.ASCII.GetBytes(msg);

                        stream.Write(send_buffer, 0, send_buffer.Length);

                        //sock.SendTo(send_buffer, endPoint);
                        statusText.Text = "sendcommand method ran";

                        stream.Close();
                        sendingTcpClient.Close();
                    }
                    catch (SocketException)
                    {
                        statusText.Text = "Connection Refused";
                    }
                }
            }
        }

        protected void carIgnition_Click(object sender, EventArgs e)
        {
            sendCommand("8");
            statusText.Text = "ignition clicked";
        }

        protected void carThrottle_Click(object sender, EventArgs e)
        {
            statusText.Text = "throttle clicked";
        }

        protected void carLeft_Click(object sender, EventArgs e)
        {
            statusText.Text = "left turn clicked";
        }

        protected void carRight_Click(object sender, EventArgs e)
        {
            statusText.Text = "right turn clicked";
        }

        

    }
}