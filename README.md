ZWebServiceTest
===============

A simple SAP web service iOS client for practice

Now that it is possible to define oData services in SAP, it is very unlikely I will go back to web services as a method of exposing SAP backend data. I did this project way back in September 2012 when I was just starting off in iOS programming and SAP web services. So please don't judge my coding abilities, or blame me for any damages you might incur when using this code for learning or other purposes.

Create a web service in SAP. Test your web service with soapUI. Download the WSDL for your binding as an XML file (or wsdl file). Go to Sudz-C and generate client proxy. Be sure to choose Objective-C for iOS (Automatic Reference Counting), if you have enabled ARC in Xcode. Include the client proxy code in your Xcode project. The Sudz-C output includes instructions on how to do this. Refer soapUI log to make corrections in Sudz-C generated code (esp.﻿SoapRequest) to correct the XML parse logic.
