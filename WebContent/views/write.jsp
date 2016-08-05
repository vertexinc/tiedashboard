
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<%@page import="com.tie.app.TieController"%>
<%@page import="com.tie.app.TieSessionController"%>
<%@page import="com.tie.ui.TieMainPage"%>
<%@page import="com.tie.model.TieMsg"%>

<body>

	<%!TieMainPage tieMainPage = TieMainPage.getTieMainPage();%>
	<%!List<TieMsg> msgList = tieMainPage.getMsgList();%>

	<div id="upper">
		<div class="scrollbar2" id="style-4">
			<div class="force-overflow2">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>User</th>
							<th>Subject</th>
							<th>Description</th>
							<th>Date</th>
						</tr>
					</thead>


					<tbody>
						<%
							for (TieMsg tieMsg : msgList) {
						%>
						<tr>
							<th scope="row"><%=tieMainPage.getUsername()%></th>
							<td><%=tieMsg.getSubject()%></td>
							<td><%=tieMsg.getDescription()%></td>
							<td><%=tieMsg.getTimestamp()%></td>
						</tr>
						<%
							}
						%>
						<!--tr>
							<th scope="row">Adam</th>
							<td>cbcr2</td>
							<td>This is cbcr2</td>
							<td>2015-12-12</td>
						</tr>

						<tr>
							<th scope="row">Lucy</th>
							<td>cbcr3</td>
							<td>This is cbcr3</td>
							<td>2015-12-12</td>
						</tr>
						<tr>
							<th scope="row">Kate</th>
							<td>cbcr4</td>
							<td>This is cbcr4</td>
							<td>2015-12-12</td>
						</tr>
						<tr>
							<th scope="row">Liu</th>
							<td>cbcr1</td>
							<td>This is cbcr1This is cbcr1This is cbcr1This is cbcr1This
								is cbcr1This is cbcr1</td>
							<td>2015-12-12</td>
						</tr>
						<tr>
							<th scope="row">Taylor</th>
							<td>cbcr1</td>
							<td>This is cbcr1This is cbcr1This is cbcr1This is cbcr1This
								is cbcr1This is cbcr1</td>
							<td>2015-12-12</td>
						</tr>
						<tr>
							<th scope="row">Ben</th>
							<td>cbcr1</td>
							<td>This is cbcr1This is cbcr1This is cbcr1This is cbcr1This
								is cbcr1This is cbcr1</td>
							<td>2015-12-12</td>
						</tr-->
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="scrollbar3" id="style-4">
			<!--  div class="force-overflow3"-->

			<ul class="nav nav-tabs">
				<li><a data-toggle="tab" href="#Message">Message</a></li>
				<li><a data-toggle="tab" href="#Docs">Docs</a></li>
				<li><a data-toggle="tab" href="#Entity">Entity</a></li>
				<li><a data-toggle="tab" href="#Table1">Table1</a></li>
				<li><a data-toggle="tab" href="#Table2">Table2</a></li>
				<li><a data-toggle="tab" href="#Table3">Table3</a></li>

			</ul>
			<div class="tab-content">
				<div id="Message" class="tab-pane fade in active">
					<div class="row">
						<div class="col-md-4">
							<p>From: abc@MX</p>
						</div>


						<div class="col-md-4">
							<p>Date: Jan 11,2018</p>
						</div>

						<div class="col-md-4">
							<p>Status: Viewed</p>
						</div>
					</div>

					<div class="row">
						<div id="formGroup">
							<form>
								<div class="form-group row">
									<label for="To" class="col-sm-2 form-control-label">To:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="To"
											placeholder="xyz@DE;uvx@US">
									</div>
								</div>
								<div class="form-group row">
									<label for="Subject" class="col-sm-2 form-control-label">Subject:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="Subject"
											placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<label for="Notes" class="col-sm-2 form-control-label">Notes:</label>
									<div class="col-sm-10">
										<textarea rows="4" cols="127"></textarea>
									</div>
								</div>
								<div class="form-group row">
									<label for="Warning" class="col-sm-2 form-control-label">Warning:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="Warning"
											placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<label for="Contact" class="col-sm-2 form-control-label">Contact:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="Contact"
											placeholder="">
									</div>
								</div>
							</form>

						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<table style="width: 100%">
								<tr>
									<th>OECD Message Ref ID:</th>
									<td>MX-2018-1</td>
								</tr>
								<tr>
									<th>OECD Message Type:</th>
									<td><select class="form-control" id="sel1">
											<option>CbC</option>
											<option>Other</option>
									</select></td>
								</tr>
								<tr>
									<th>Sending Country:</th>
									<td>MX</td>
								</tr>
								<tr>
									<th>Language:</th>
									<td><select class="form-control" id="sel1">
											<option>EN</option>
											<option>SP</option>
									</select></td>
								</tr>
							</table>
						</div>
						<div class="col-md-6">
							<table style="width: 100%">
								<tr>
									<th>Reporting Period:</th>
									<td><select class="form-control" id="sel1">
											<option>2018</option>
											<option>2017</option>
											<option>2016</option>
									</select></td>
								</tr>

								<tr>
									<th>OECD Message Type Indic:</th>
									<td><select class="form-control" id="sel1">
											<option>CBC401</option>
											<option>CBC402</option>
											<option>CBC403</option>
									</select></td>
								</tr>

								<tr>
									<th>Receiving Country:</th>
									<td>DE,US</td>
								</tr>
							</table>
						</div>
					</div>

				</div>
				<div id="Docs" class="tab-pane fade">
					<div class="row">
						<div class="col-md-6">Tax Documents In Message:</div>
						<div id="docbuttons" class="col-md-6">
							<button type="button" class="btn btn-info">Attach Tax
								Data File</button>
							<button type="button" class="btn btn-info">Detach From
								Msg...</button>
						</div>
					</div>
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Code</th>
								<th>Title</th>
								<th>Doc Type</th>
								<th>Reporting Entity</th>
								<th>Currency</th>
								<th>Resident Country</th>
								<th>Accounting Standard</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>code123</td>
								<td>Doc1</td>
								<td>Excel</td>
								<td>Reporting1212</td>
								<td>US Dollar</td>
								<td>USA</td>
							</tr>
							<tr>
								<td>code123</td>
								<td>Doc1</td>
								<td>Excel</td>
								<td>Reporting1212</td>
								<td>US Dollar</td>
								<td>USA</td>
							</tr>
							<tr>
								<td>code123</td>
								<td>Doc1</td>
								<td>Excel</td>
								<td>Reporting1212</td>
								<td>US Dollar</td>
								<td>USA</td>
							</tr>
							<tr>
								<td>code123</td>
								<td>Doc1</td>
								<td>Excel</td>
								<td>Reporting1212</td>
								<td>US Dollar</td>
								<td>USA</td>
							</tr>
							<tr>
								<td>code123</td>
								<td>Doc1</td>
								<td>Excel</td>
								<td>Reporting1212</td>
								<td>US Dollar</td>
								<td>USA</td>
							</tr>
							<tr>
								<td>code123</td>
								<td>Doc1</td>
								<td>Excel</td>
								<td>Reporting1212</td>
								<td>US Dollar</td>
								<td>USA</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="Entity" class="tab-pane fade">
					<div class="row" id="docrow">
						<h3>&nbsp;&nbsp; Entities in CBCR Doc:</h3>
					</div>
					<div class="row">
						<div class="col-md-6">

							<table style="width: 100%">
								<tr>
									<td>Reporting Entity:</td>
									<td>Sample Corp</td>
								</tr>
								<tr>
									<td>Resident Country:</td>
									<td>MX</td>
								</tr>
							</table>
						</div>
						<div class="col-md-3">Currency:</div>
						<div class="col-md-3">MXP</div>
					</div>

					</br>
					<table class="table table-striped">
						<thead>
							<tr>
								<th>TIN</th>
								<th>Name</th>
								<th>Doc Type</th>
								<th>Incorporation Country</th>
								<th>Resident Country</th>
								<th>Is PE?</th>
								<th>Address</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>TIN1</td>
								<td>Sample</td>
								<td>Excel</td>
								<td>USA</td>
								<td>USA</td>
								<td>YES</td>
								<td>342 South AVE</td>
							</tr>
							<tr>
								<td>TIN1</td>
								<td>Sample</td>
								<td>Excel</td>
								<td>USA</td>
								<td>USA</td>
								<td>YES</td>
								<td>342 South AVE</td>
							</tr>
							<tr>
								<td>TIN1</td>
								<td>Sample</td>
								<td>Excel</td>
								<td>USA</td>
								<td>USA</td>
								<td>YES</td>
								<td>342 South AVE</td>
							</tr>
							<tr>
								<td>TIN1</td>
								<td>Sample</td>
								<td>Excel</td>
								<td>USA</td>
								<td>USA</td>
								<td>YES</td>
								<td>342 South AVE</td>
							</tr>
							<tr>
								<td>TIN1</td>
								<td>Sample</td>
								<td>Excel</td>
								<td>USA</td>
								<td>USA</td>
								<td>YES</td>
								<td>342 South AVE</td>
							</tr>
							<tr>
								<td>TIN1</td>
								<td>Sample</td>
								<td>Excel</td>
								<td>USA</td>
								<td>USA</td>
								<td>YES</td>
								<td>342 South AVE</td>
							</tr>
							<tr>
								<td>TIN1</td>
								<td>Sample</td>
								<td>Excel</td>
								<td>USA</td>
								<td>USA</td>
								<td>YES</td>
								<td>342 South AVE</td>
							</tr>
							<tr>
								<td>TIN1</td>
								<td>Sample</td>
								<td>Excel</td>
								<td>USA</td>
								<td>USA</td>
								<td>YES</td>
								<td>342 South AVE</td>
							</tr>
						</tbody>
					</table>

				</div>
				<div id="Table1" class="tab-pane fade">
					<h5>Table 1. Overview of allocation of income, taxes and
						business activities by tax jurisdiction</h5>
					<table border="0" cellpadding="0" cellspacing="0" width="928"
						style="border-collapse: collapse; table-layout: fixed; width: 698pt">
						<colgroup>
							<col width="106"
								style="mso-width-source: userset; mso-width-alt: 3876; width: 80pt">
							<col width="100"
								style="mso-width-source: userset; mso-width-alt: 3657; width: 75pt">
							<col width="88"
								style="mso-width-source: userset; mso-width-alt: 3218; width: 66pt">
							<col width="83"
								style="mso-width-source: userset; mso-width-alt: 3035; width: 62pt">
							<col width="82"
								style="mso-width-source: userset; mso-width-alt: 2998; width: 62pt">
							<col width="86"
								style="mso-width-source: userset; mso-width-alt: 3145; width: 65pt">
							<col width="74"
								style="mso-width-source: userset; mso-width-alt: 2706; width: 56pt">
							<col width="64" style="width: 48pt">
							<col width="84"
								style="mso-width-source: userset; mso-width-alt: 3072; width: 63pt">
							<col width="86"
								style="mso-width-source: userset; mso-width-alt: 3145; width: 65pt">
							<col width="75"
								style="mso-width-source: userset; mso-width-alt: 2742; width: 56pt">
						</colgroup>
						<tbody>
							<tr height="33"
								style="mso-height-source: userset; height: 24.75pt">
								<td colspan="11" height="33" class="xl69" width="928"
									style="border-right: .5pt solid black; height: 24.75pt; width: 698pt">Name<span
									style="mso-spacerun: yes">&nbsp; </span>of<span
									style="mso-spacerun: yes">&nbsp; </span>the<span
									style="mso-spacerun: yes">&nbsp; </span>MNE<span
									style="mso-spacerun: yes">&nbsp; </span>group:<span
									style="mso-spacerun: yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
							</tr>
							<tr height="30"
								style="mso-height-source: userset; height: 22.5pt">
								<td colspan="11" height="30" class="xl71" width="928"
									style="border-right: .5pt solid black; height: 22.5pt; width: 698pt">Fiscal
									Year Concerned:<span style="mso-spacerun: yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
								</td>
							</tr>
							<tr height="34"
								style="mso-height-source: userset; height: 25.5pt">
								<td rowspan="2" height="121" class="xl76" width="106"
									style="height: 90.75pt; border-top: none; width: 80pt">Tax
									Jurisdiction</td>
								<td colspan="3" class="xl76" width="271"
									style="border-left: none; width: 203pt">Revenues</td>
								<td rowspan="2" class="xl76" width="82"
									style="border-top: none; width: 62pt">
									<meta charset="utf-8"> <span
									style="white-space: pre-wrap">Profit (Loss) Before
										Income Tax</span>
								</td>
								<td rowspan="2" class="xl76" width="86"
									style="border-top: none; width: 65pt">Income Tax Paid (on
									cash basis)</td>
								<td rowspan="2" class="xl76" width="74"
									style="border-top: none; width: 56pt">Income Tax Accrued -
									Current Year</td>
								<td rowspan="2" class="xl76" width="64"
									style="border-top: none; width: 48pt">Stated Captial</td>
								<td rowspan="2" class="xl76" width="84"
									style="border-top: none; width: 63pt">Accumulated Earnings</td>
								<td rowspan="2" class="xl76" width="86"
									style="border-top: none; width: 65pt">Number of Employees</td>
								<td rowspan="2" class="xl76" width="75"
									style="border-top: none; width: 56pt">Tangible Assets
									other than Cash and Cash Equivalents</td>
							</tr>
							<tr height="87"
								style="mso-height-source: userset; height: 65.25pt">
								<td height="87" class="xl76" width="100"
									style="height: 65.25pt; border-top: none; border-left: none; width: 75pt">Unrelated
									Party</td>
								<td class="xl76" width="88"
									style="border-top: none; border-left: none; width: 66pt">Related
									Party</td>
								<td class="xl76" width="83"
									style="border-top: none; border-left: none; width: 62pt">Total</td>
							</tr>
							<tr height="30"
								style="mso-height-source: userset; height: 22.5pt">
								<td height="30" class="xl74" width="106"
									style="height: 22.5pt; width: 80pt">&nbsp;</td>
								<td class="xl74" width="100"
									style="border-left: none; width: 75pt">&nbsp;</td>
								<td class="xl74" width="88"
									style="border-left: none; width: 66pt">&nbsp;</td>
								<td class="xl74" width="83"
									style="border-left: none; width: 62pt">&nbsp;</td>
								<td class="xl74" width="82"
									style="border-left: none; width: 62pt">&nbsp;</td>
								<td class="xl74" width="86"
									style="border-left: none; width: 65pt">&nbsp;</td>
								<td class="xl74" width="74"
									style="border-left: none; width: 56pt">&nbsp;</td>
								<td class="xl74" width="64"
									style="border-left: none; width: 48pt">&nbsp;</td>
								<td class="xl74" width="84"
									style="border-left: none; width: 63pt">&nbsp;</td>
								<td class="xl74" width="86"
									style="border-left: none; width: 65pt">&nbsp;</td>
								<td class="xl75" style="border-left: none">&nbsp;</td>
							</tr>
							<tr height="31"
								style="mso-height-source: userset; height: 23.25pt">
								<td height="31" class="xl67" width="106"
									style="height: 23.25pt; border-top: none; width: 80pt">&nbsp;</td>
								<td class="xl67" width="100"
									style="border-top: none; border-left: none; width: 75pt">&nbsp;</td>
								<td class="xl67" width="88"
									style="border-top: none; border-left: none; width: 66pt">&nbsp;</td>
								<td class="xl67" width="83"
									style="border-top: none; border-left: none; width: 62pt">&nbsp;</td>
								<td class="xl67" width="82"
									style="border-top: none; border-left: none; width: 62pt">&nbsp;</td>
								<td class="xl67" width="86"
									style="border-top: none; border-left: none; width: 65pt">&nbsp;</td>
								<td class="xl67" width="74"
									style="border-top: none; border-left: none; width: 56pt">&nbsp;</td>
								<td class="xl67" width="64"
									style="border-top: none; border-left: none; width: 48pt">&nbsp;</td>
								<td class="xl67" width="84"
									style="border-top: none; border-left: none; width: 63pt">&nbsp;</td>
								<td class="xl67" width="86"
									style="border-top: none; border-left: none; width: 65pt">&nbsp;</td>
								<td class="xl65" style="border-top: none; border-left: none">&nbsp;</td>
							</tr>
							<tr height="32"
								style="mso-height-source: userset; height: 24.0pt">
								<td height="32" class="xl67" width="106"
									style="height: 24.0pt; border-top: none; width: 80pt">&nbsp;</td>
								<td class="xl67" width="100"
									style="border-top: none; border-left: none; width: 75pt">&nbsp;</td>
								<td class="xl67" width="88"
									style="border-top: none; border-left: none; width: 66pt">&nbsp;</td>
								<td class="xl67" width="83"
									style="border-top: none; border-left: none; width: 62pt">&nbsp;</td>
								<td class="xl67" width="82"
									style="border-top: none; border-left: none; width: 62pt">&nbsp;</td>
								<td class="xl67" width="86"
									style="border-top: none; border-left: none; width: 65pt">&nbsp;</td>
								<td class="xl67" width="74"
									style="border-top: none; border-left: none; width: 56pt">&nbsp;</td>
								<td class="xl67" width="64"
									style="border-top: none; border-left: none; width: 48pt">&nbsp;</td>
								<td class="xl67" width="84"
									style="border-top: none; border-left: none; width: 63pt">&nbsp;</td>
								<td class="xl67" width="86"
									style="border-top: none; border-left: none; width: 65pt">&nbsp;</td>
								<td class="xl65" style="border-top: none; border-left: none">&nbsp;</td>
							</tr>
							<tr height="32"
								style="mso-height-source: userset; height: 24.0pt">
								<td height="32" class="xl67" width="106"
									style="height: 24.0pt; border-top: none; width: 80pt">&nbsp;</td>
								<td class="xl67" width="100"
									style="border-top: none; border-left: none; width: 75pt">&nbsp;</td>
								<td class="xl67" width="88"
									style="border-top: none; border-left: none; width: 66pt">&nbsp;</td>
								<td class="xl67" width="83"
									style="border-top: none; border-left: none; width: 62pt">&nbsp;</td>
								<td class="xl67" width="82"
									style="border-top: none; border-left: none; width: 62pt">&nbsp;</td>
								<td class="xl67" width="86"
									style="border-top: none; border-left: none; width: 65pt">&nbsp;</td>
								<td class="xl67" width="74"
									style="border-top: none; border-left: none; width: 56pt">&nbsp;</td>
								<td class="xl67" width="64"
									style="border-top: none; border-left: none; width: 48pt">&nbsp;</td>
								<td class="xl67" width="84"
									style="border-top: none; border-left: none; width: 63pt">&nbsp;</td>
								<td class="xl67" width="86"
									style="border-top: none; border-left: none; width: 65pt">&nbsp;</td>
								<td class="xl65" style="border-top: none; border-left: none">&nbsp;</td>
							</tr>
							<!--[if supportMisalignedColumns]-->
							<tr height="0" style="display: none">
								<td width="106" style="width: 80pt"></td>
								<td width="100" style="width: 75pt"></td>
								<td width="88" style="width: 66pt"></td>
								<td width="83" style="width: 62pt"></td>
								<td width="82" style="width: 62pt"></td>
								<td width="86" style="width: 65pt"></td>
								<td width="74" style="width: 56pt"></td>
								<td width="64" style="width: 48pt"></td>
								<td width="84" style="width: 63pt"></td>
								<td width="86" style="width: 65pt"></td>
								<td width="75" style="width: 56pt"></td>
							</tr>
							<!--[endif]-->
						</tbody>
					</table>

				</div>
				<div id="Table2" class="tab-pane fade">
					<h5>Table 2. List of all the Constituent Entities of the MNE
						group included in each aggregation per tax jurisdiction</h5>
					<table border="0" cellpadding="0" cellspacing="0" width="1424"
						style="border-collapse: collapse; table-layout: fixed; width: 1069pt">
						<colgroup>
							<col width="84"
								style="mso-width-source: userset; mso-width-alt: 3072; width: 63pt">
							<col width="87"
								style="mso-width-source: userset; mso-width-alt: 3181; width: 65pt">
							<col width="123"
								style="mso-width-source: userset; mso-width-alt: 4498; width: 92pt">
							<col width="95"
								style="mso-width-source: userset; mso-width-alt: 3474; width: 71pt">
							<col width="90"
								style="mso-width-source: userset; mso-width-alt: 3291; width: 68pt">
							<col width="92"
								style="mso-width-source: userset; mso-width-alt: 3364; width: 69pt">
							<col width="105"
								style="mso-width-source: userset; mso-width-alt: 3840; width: 79pt">
							<col width="117"
								style="mso-width-source: userset; mso-width-alt: 4278; width: 88pt">
							<col width="106"
								style="mso-width-source: userset; mso-width-alt: 3876; width: 80pt">
							<col width="91"
								style="mso-width-source: userset; mso-width-alt: 3328; width: 68pt">
							<col width="64" style="width: 48pt">
							<col width="81"
								style="mso-width-source: userset; mso-width-alt: 2962; width: 61pt">
							<col width="74"
								style="mso-width-source: userset; mso-width-alt: 2706; width: 56pt">
							<col width="87"
								style="mso-width-source: userset; mso-width-alt: 3181; width: 65pt">
							<col width="64" span="2" style="width: 48pt">
						</colgroup>
						<tbody>
							<tr height="20" style="height: 15.0pt">
								<td colspan="16" height="20" class="x0l72" width="1424"
									style="border-right: .5pt solid black; height: 15.0pt; width: 1069pt">Name
									of the MNE group:</td>
							</tr>
							<tr height="21" style="height: 15.75pt">
								<td colspan="16" height="21" class="x0l69" width="1424"
									style="border-right: .5pt solid black; height: 15.75pt; width: 1069pt">Fiscal
									year concerned:</td>
							</tr>
							<tr height="22" style="height: 16.5pt">
								<td rowspan="2" height="170" class="x0l67" width="84"
									style="height: 127.5pt; width: 63pt">Tax Jurisdiction</td>
								<td rowspan="2" class="x0l67" width="87" style="width: 65pt">Constituent
									Entities resident in the Tax Jurisdiction</td>
								<td rowspan="2" class="x0l67" width="123" style="width: 92pt">Tax
									Jurisdiction of organisation of incorporation if different from
									Tax Jurisdiction of Resident</td>
								<td colspan="13" class="x0l67" width="1130"
									style="border-left: none; width: 849pt">Main business
									activity(ies)</td>
							</tr>
							<tr height="148"
								style="mso-height-source: userset; height: 111.0pt">
								<td height="148" class="x0l67" width="95"
									style="height: 111.0pt; border-top: none; border-left: none; width: 71pt">Research
									and Development</td>
								<td class="x0l67" width="90"
									style="border-top: none; border-left: none; width: 68pt">Holding
									or Managing intellectual Property</td>
								<td class="x0l67" width="92"
									style="border-top: none; border-left: none; width: 69pt">Purchase
									or Procurement</td>
								<td class="x0l67" width="105"
									style="border-top: none; border-left: none; width: 79pt">Manufacturing
									or Production</td>
								<td class="x0l67" width="117"
									style="border-top: none; border-left: none; width: 88pt">Sales,
									Marketing or Distribution</td>
								<td class="x0l67" width="106"
									style="border-top: none; border-left: none; width: 80pt">Administrative,
									Management or Support Services</td>
								<td class="x0l67" width="91"
									style="border-top: none; border-left: none; width: 68pt">Provision
									of Services to unrelated parties</td>
								<td class="x0l67" width="64"
									style="border-top: none; border-left: none; width: 48pt">Internal
									Group Finance</td>
								<td class="x0l67" width="81"
									style="border-top: none; border-left: none; width: 61pt">Regulated
									Financial Services</td>
								<td class="x0l67" width="74"
									style="border-top: none; border-left: none; width: 56pt">Insurance</td>
								<td class="x0l67" width="87"
									style="border-top: none; border-left: none; width: 65pt">Holding
									shares or other equity instruments</td>
								<td class="x0l67" width="64"
									style="border-top: none; border-left: none; width: 48pt">Dormant</td>
								<td class="x0l67" width="64"
									style="border-top: none; border-left: none; width: 48pt">Other2</td>
							</tr>
							<tr height="21" style="height: 15.75pt">
								<td rowspan="3" height="61" class="x0l68" width="84"
									style="height: 45.75pt; width: 63pt">&nbsp;</td>
								<td class="x0l65" style="border-left: none">1</td>
								<td class="x0l66" style="border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-left: none">&nbsp;</td>
							</tr>
							<tr height="20" style="height: 15.0pt">
								<td height="20" class="x0l65"
									style="height: 15.0pt; border-top: none; border-left: none">2</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
							</tr>
							<tr height="20" style="height: 15.0pt">
								<td height="20" class="x0l65"
									style="height: 15.0pt; border-top: none; border-left: none">3</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
							</tr>
							<tr height="20" style="height: 15.0pt">
								<td rowspan="3" height="60" class="x0l68" width="84"
									style="height: 45.0pt; border-top: none; width: 63pt">&nbsp;</td>
								<td class="x0l65" style="border-top: none; border-left: none">1</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
							</tr>
							<tr height="20" style="height: 15.0pt">
								<td height="20" class="x0l65"
									style="height: 15.0pt; border-top: none; border-left: none">2</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
							</tr>
							<tr height="20" style="height: 15.0pt">
								<td height="20" class="x0l65"
									style="height: 15.0pt; border-top: none; border-left: none">3</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
								<td class="x0l66" style="border-top: none; border-left: none">&nbsp;</td>
							</tr>
							<!--[if supportMisalignedColumns]-->
							<tr height="0" style="display: none">
								<td width="84" style="width: 63pt"></td>
								<td width="87" style="width: 65pt"></td>
								<td width="123" style="width: 92pt"></td>
								<td width="95" style="width: 71pt"></td>
								<td width="90" style="width: 68pt"></td>
								<td width="92" style="width: 69pt"></td>
								<td width="105" style="width: 79pt"></td>
								<td width="117" style="width: 88pt"></td>
								<td width="106" style="width: 80pt"></td>
								<td width="91" style="width: 68pt"></td>
								<td width="64" style="width: 48pt"></td>
								<td width="81" style="width: 61pt"></td>
								<td width="74" style="width: 56pt"></td>
								<td width="87" style="width: 65pt"></td>
								<td width="64" style="width: 48pt"></td>
								<td width="64" style="width: 48pt"></td>
							</tr>
							<!--[endif]-->
						</tbody>
					</table>
					<h6>Please specify the nature if the activity of the
						Consitituent Entity in the "Additional Information" section.</h6>
				</div>
				<div id="Table3" class="tab-pane fade">
					<h5>Table 3. Additional Information</h5>

					<table style="width: 100%">

						<tr>

							<th><div id="table3head">Name of the MNE group:</div>
								<div id="table3head">Fiscal year concerned:</div></th>
						</tr>

						<tr>

							<td class="x00l66" rows="4" cols="180" id="To">Please
								include any further brief information or explaination you
								consider necessary or that would facilitate the understanding of
								the compulsory information provided in the country-by-country
								report.</td>

						</tr>

					</table>
				</div>
			</div>
			<!--  /div-->
		</div>
	</div>
</body>
