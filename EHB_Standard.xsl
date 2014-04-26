<?xml version="1.0" encoding="ISO-8859-1"?>

<!--Path: C:\Program Files (x86)\Microsoft Office\Office14\Bibliography\Style -->
<!--Externe Ressourcen, die referenziert werden -->
<xsl:stylesheet
     version = "1.0"
     xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"
     xmlns:b = "http://schemas.openxmlformats.org/officeDocument/2006/bibliography">

 
  <!--### Abschnitt 0: Grundlegende Einstellungen zur Style-Datei.###-->
  
  <!--Ausgabe als HTML -->
  <xsl:output method = "html" encoding = "us-ascii"/>

  <!--Das Wurzel-Element weitergeben -->
  <xsl:template match = "/">
    <xsl:apply-templates select = "*"/>
  </xsl:template>

  <!-- Hier kann eine Versionsnummer f�r das gesamte Dokument gesetzt werden (Optional)-->
  <xsl:template match = "b:version">
    <xsl:text>Version 1.0</xsl:text>
  </xsl:template>

  <!--Hier wird der Name festgelegt, der in Word 2007 erscheinen soll -->
  <xsl:template match = "b:StyleName">
    <xsl:text>EHB Standard</xsl:text>
  </xsl:template>


  <!--### Abschnitt 1: Hier wird festgelegt, wie das Formular aussehen soll,
    wenn eine neue Quelle angelegt wird (vorausgesetzt, dass die Option
    "Alle Literaturverzeichnisfelder anzeigen" aktiviert ist.) ###-->

  <xsl:template match = "b:GetImportantFields">
    <b:ImportantFields>
      <xsl:choose>

        <!--f�r B�cher-->
        <xsl:when test="b:SourceType='Book'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Publisher</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:StandardNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--f�r Buchabschnitte-->
        <xsl:when test="b:SourceType='BookSection'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Author/b:BookAuthor/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:BookTitle</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Publisher</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--F�r Zeitungsartikel-->
        <xsl:when test="b:SourceType='JournalArticle'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Publisher</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Volume</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Issue</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:StandardNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--f�r Artikel einer Zeitschrift-->
        <xsl:when test="b:SourceType='ArticleInAPeriodical'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:PeriodicalTitle</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Edition</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Volume</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Issue</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--F�r Konferenzprotokolle-->
        <xsl:when test="b:SourceType='ConferenceProceedings'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Publisher</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:StandardNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--F�r Berichte-->
        <xsl:when test="b:SourceType='Report'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Publisher</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:StandardNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--F�r Tonaufnahmen-->
        <xsl:when test="b:SourceType='SoundRecording'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Artist/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:AlbumTitle</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:ProductionCompany</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Medium</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:StandardNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--F�r Auff�hrungen-->
        <xsl:when test="b:SourceType='Performance'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Writer/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:ProductionCompany</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Theater</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:StandardNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--F�r Kunst-->
        <xsl:when test="b:SourceType='Art'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Artist/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Institution</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--F�r Dokumente von Webseiten-->
        <xsl:when test="b:SourceType='DocumentFromInternetSite'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:InternetSiteTitle</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Month</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Day</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:YearAccessed</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:MonthAccessed</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:DayAccessed</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:URL</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--F�r Webseiten-->
        <xsl:when test="b:SourceType='InternetSite'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:InternetSiteTitle</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Month</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Day</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:YearAccessed</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:MonthAccessed</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:DayAccessed</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:URL</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--F�r Filme-->
        <xsl:when test="b:SourceType='Film'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Director/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:ProductionCompany</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--F�r Interviews-->
        <xsl:when test="b:SourceType='Interview'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Interviewee/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:BroadcastTitle</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Month</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Day</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Broadcaster</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Station</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--F�r Patente-->
        <xsl:when test="b:SourceType='Patent'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Inventor/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Month</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Day</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:CountryRegion</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Type</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:PatentNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--F�r elektronische Quellen-->
        <xsl:when test="b:SourceType='ElectronicSource'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:ProductionCompany</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Medium</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:StandardNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--F�r F�lle-->
        <xsl:when test="b:SourceType='Case'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:CaseNumber</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Court</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:AbbreviatedCaseNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--F�r "Verschiedenes"-->
        <xsl:when test="b:SourceType='Misc'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:PublicationTitle</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Publisher</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Volume</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Issue</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:StandardNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

      </xsl:choose>
    </b:ImportantFields>
  </xsl:template>

  <!--### Abschnitt 2: Hier wird festgelegt, wie die einzelnen Quellen im Literaturverzeichnis
    ausgegeben werden sollen. Hier sind noch nicht alle Arten von Quellen eingetragen.
    Ggf. m�ssen die entsprechenden Quellenarten noch hinzugef�gt werden.###-->

  <!--So werden Interviews ausgegeben -->
  <!--Anmerkung: Das Feld "Sender"wurde hier benutzt, um die Position im Unternehmen zu beschreiben)-->
  <xsl:template match = "b:Source[b:SourceType = 'Interview']">
    <p style="font-family: Times New Roman; font-size: 12pt;">
      <span style="font-weight: bold; ">
        <xsl:text>(</xsl:text>
        <xsl:value-of select = "b:Tag"/>
        <xsl:text>) </xsl:text>
      </span>
      <!-- Autorenliste-->
      <xsl:apply-templates select="b:Author/b:Interviewee" mode="IntervieweeNamelistFull" />
      <!--Sender (hier: Position)-->
      <xsl:text> (</xsl:text>
      <xsl:value-of select = "b:Station"/>
      <!--Thema-->
      <xsl:text>) zum Thema: </xsl:text>
      <xsl:value-of select = "b:Title"/>
      <!--Datum-->
      <xsl:text> (</xsl:text>
      <xsl:value-of select = "b:Day"/>
      <xsl:text>. </xsl:text>
      <xsl:value-of select = "b:Month"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select = "b:Year"/>
      <xsl:text>).</xsl:text>
    </p>
  </xsl:template>

  <!--So werden B�cher, Berichte und elektronische Quellen ausgegeben -->
  <!--Friedemann M.-L./K�hlen C. (2010): Familien- und umweltbezogene Pflege. Die
Theorie des systemischen Gleichgewichts. 2. erw. Aufl., Bern: Huber-->
  <xsl:template match = "b:Source[b:SourceType = 'Book'] | b:Source[b:SourceType = 'Report'] | b:Source[b:SourceType = 'ElectronicSource']">
    <p style="font-family: Times New Roman; font-size: 12pt; ">
	<!-- ATTRIBUT text-align: left; ??-->
		<span style="font-weight: bold; ">
			<!--Autorenliste-->
			<xsl:apply-templates select="b:Author/b:Author" mode="AuthorNamelistFull" />
			<xsl:text> (</xsl:text>
			<xsl:value-of select = "b:Year"/>
			<xsl:text>)</xsl:text>
		</span>
		<xsl:text>: </xsl:text>
		<xsl:value-of select = "b:Title"/>
		<xsl:text>. </xsl:text>
		<xsl:if test="b:City != ''">
			<xsl:value-of select = "b:City"/>
			<xsl:text>: </xsl:text>
		</xsl:if>
		<xsl:value-of select = "b:Publisher"/>
    </p>
  </xsl:template>
  
    <!-- Zeitschriftenartikel-->
  <!-- F�sgen I. (2004): Pr�vention von Harninkontinenz. Risikofaktoren rechtzeitig erkennen.
    In: Pflegen ambulant., 15. Jg., H. 4, S. 13-15 -->
  <xsl:template match = "b:Source[b:SourceType = 'Article'] | b:Source[b:SourceType = 'ArticleInAPeriodical']">
    <p style="font-family: Times New Roman; font-size: 12pt;">
		<span style="font-weight: bold; ">
		  <!--Autorenliste-->
		  <xsl:apply-templates select="b:Author/b:Author" mode="AuthorNamelistFull" />
		  <xsl:text> (</xsl:text>
		  <xsl:value-of select = "b:Year"/>
		  <xsl:text>)</xsl:text>
		</span>
		<xsl:text>: </xsl:text>
		<!--Titel-->
		<xsl:value-of select = "b:Title"/>
		<xsl:text>.</xsl:text>
		<!-- Jahrgang etc.-->
		<xsl:text>, </xsl:text>
		<xsl:value-of select = "b:Volume"/>
		<xsl:text>, </xsl:text>
		<xsl:if test="b:Pages != ''">
			<xsl:text>S. </xsl:text>
			<xsl:value-of select = "b:Pages"/>
		</xsl:if>
    </p>
  </xsl:template>

  <!--So werden Webseiten und Dokumente von Webseiten ausgegeben
  University of Zurich, Department of Geography (Hrsg.) (1997): Leitfaden wiss. Arbeiten.
  Internet: http://www.geo.unizh.ch/gis/leitf/leitf_home.html (Zugriff: 24.08.1999).-->
  <xsl:template match = "b:Source[b:SourceType = 'InternetSite'] | b:Source[b:SourceType = 'DocumentFromInternetSite']">
    <p style="font-family: Times New Roman; font-size: 12pt;">
      <span style="font-weight: bold;">
		  <!--Autorenliste-->
		  <xsl:apply-templates select="b:Author/b:Author" mode="AuthorNamelistFull" />
		  <xsl:if test="b:Year != ''">
			  <xsl:text> (</xsl:text>
			  <xsl:value-of select = "b:Year"/>
			  <xsl:text>)</xsl:text>
		  </xsl:if>
      </span>
      <!--Titel-->
      <xsl:text>: </xsl:text>
      <xsl:value-of select = "b:Title"/>
	  <xsl:text>. </xsl:text>
	  <!--URL-->
	  <span>
		<xsl:text> Internet: </xsl:text>
        <xsl:value-of select = "b:URL"/>
	  </span>
      <!--Zugriffs-Datum-->
      <span>
	  <xsl:if test="b:YearAccessed != ''">
	    <xsl:text> (Zugriff: </xsl:text>
		<xsl:if test="b:DayAccessed != ''">
			<xsl:value-of select = "b:DayAccessed"/>
			<xsl:text>.</xsl:text>
		</xsl:if>
		<xsl:if test="b:MonthAccessed != ''">
			<xsl:value-of select = "b:MonthAccessed"/>
			<xsl:text>.</xsl:text>
		</xsl:if>
		<xsl:value-of select = "b:YearAccessed"/>
		<xsl:text>)</xsl:text>
	  </xsl:if>
	  <xsl:text>.</xsl:text>
      </span>
    </p>
  </xsl:template>


  <!--### Abschnitt 3: Hier wird festgelegt, wie das gesamte Literaturverzeichnis ausgegeben wird.###-->

  <xsl:template match = "b:Bibliography">
    <html xmlns = "http://www.w3.org/TR/REC-html40">
      <body>
        <!--Zuerst kommen B�cher, Berichte und Elektronische Quellen-->
		<xsl:if test="b:Source[b:SourceType = 'Book'] != '' or b:Source[b:SourceType = 'Report'] != '' or b:Source[b:SourceType = 'ElectronicSource'] != ''">
			<p style="font-family: Times New Roman; font-size: 12pt; font-weight: bold; font-style: italic;">
				<span>
					<xsl:text>B�cherquellen</xsl:text>
				</span>
			</p>
			<xsl:apply-templates select = "b:Source[b:SourceType = 'Book'] | b:Source[b:SourceType = 'Report'] | b:Source[b:SourceType = 'ElectronicSource']">
				<xsl:sort select="b:Author" order="ascending"/>
			</xsl:apply-templates>
		</xsl:if>
		
		<!-- Artikel-->
		<xsl:if test="b:Source[b:SourceType = 'Article'] != '' or b:Source[b:SourceType = 'ArticleInAPeriodical'] != ''">
			<p style="font-family: Times New Roman; font-size: 12pt; font-weight: bold; font-style: italic;">
				<span>
					<xsl:text>Artikel</xsl:text>
				</span>
			</p>
			<xsl:apply-templates select = "b:Source[b:SourceType = 'Article'] | b:Source[b:SourceType = 'ArticleInAPeriodical'] ">
				<xsl:sort select="b:Author" order="ascending"/>
			</xsl:apply-templates>
		</xsl:if>
		
        <!--Anschlie�end sind Onlinequellen dran-->
		<xsl:if test="b:Source[b:SourceType = 'InternetSite'] != '' or b:Source[b:SourceType = 'DocumentFromInternetSite'] != ''">
			<p style="font-family: Times New Roman; font-size: 12pt; font-weight: bold; font-style: italic;">
				<span>
					<xsl:text>Internetquellen</xsl:text>
				</span>
			</p>
			<xsl:apply-templates select = "b:Source[b:SourceType = 'InternetSite'] | b:Source[b:SourceType = 'DocumentFromInternetSite']">
				<xsl:sort select="b:Author" order="ascending"/>
			</xsl:apply-templates>
		</xsl:if>

        <!--Zum Schluss kommen noch Interviews-->
		<xsl:if test="b:Source[b:SourceType = 'Interview'] != ''">
			<p style="font-family: Times New Roman; font-size: 12pt; font-weight: bold; font-style: italic;">
				<span>
					<xsl:text>Interviewquellen</xsl:text>
				</span>
			</p>			
			<xsl:apply-templates select = "b:Source[b:SourceType = 'Interview']">
				<xsl:sort select="b:Author" order="ascending"/>
			</xsl:apply-templates>
        </xsl:if>
      </body>
    </html>
  </xsl:template>


  <!--### Abschnitt 4: Hier wird festgelegt, wie einzelne Zitate ausgegeben werden.###-->

  <!-- (Meier 2011, S. 3)-->
  <!--xsl:value-of select = "b:Author"/-->
  <xsl:template match = "b:Citation/b:Source">
    <html xmlns = "http://www.w3.org/TR/REC-html40">
      <body>	
	  	<xsl:text>(</xsl:text>
		<span>
			<xsl:apply-templates select="b:Author/b:Author" mode="AuthorNamelistShort" />
			<xsl:text> </xsl:text>
			<xsl:value-of select = "b:Year"/>
		</span>
		<xsl:if test="../b:Pages != ''">
			<xsl:text>, S. </xsl:text>
			<xsl:value-of select = "../b:Pages"/>
		</xsl:if>
		<xsl:text>)</xsl:text>
      </body>
    </html>
  </xsl:template>

  <!--### Abschnitt 5: Hier wird festgelegt, wie die verschieden langen Autoren- bzw- Interviewpartnerlisten ausgegeben werden.###-->

  <!-- Vollst�ndige Interviewpartnerliste -->
  <xsl:template match="b:Interviewee" mode="IntervieweeNamelistFull">
    <xsl:for-each select="b:NameList/b:Person">
      <xsl:apply-templates select="."/>
      <xsl:if test="position() != last()">
        <xsl:text>, </xsl:text>
      </xsl:if>
    </xsl:for-each>
    <xsl:value-of select="b:Corporate"/>
  </xsl:template>

  <!-- Vollst�ndige Autorenliste -->
  <xsl:template match="b:Author" mode="AuthorNamelistFull">
    <xsl:for-each select="b:NameList/b:Person">
      <xsl:apply-templates select="."/>
      <xsl:if test="position() != last()">
        <xsl:text>; </xsl:text>
      </xsl:if>
    </xsl:for-each>
    <xsl:value-of select="b:Corporate"/>
  </xsl:template>

  <!-- Kurze Autorenliste (wenn mehr als 3 Autoren vorhanden sind, dann wird "et al." hinzugef�gt)-->
  <xsl:template match="b:Author" mode="AuthorNamelistShort">
    <xsl:for-each select="b:NameList/b:Person">
      <xsl:choose>
        <xsl:when test="position() = 3">
          <xsl:choose>
            <xsl:when test="last() > 3">
              <xsl:text>et al.</xsl:text>
            </xsl:when>
            <xsl:otherwise>
              <xsl:apply-templates select="."/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:when test="position() > 3">
        </xsl:when>
        <xsl:otherwise>
          <xsl:apply-templates select="."/>
          <xsl:if test="position() != last()">
            <xsl:text>, </xsl:text>
          </xsl:if>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
    <xsl:value-of select="b:Corporate"/>
  </xsl:template>

  <!-- Sehr kurze Autorenliste(wenn mehr als 1 Autor vorhanden ist, dann wird "et al." hinzugef�gt -->
  <xsl:template match="b:Author" mode="AuthorNamelistVeryShort">
    <xsl:for-each select="b:NameList/b:Person">
      <xsl:choose>
        <!--Wenn die Liste mehr als einen Autor enth�lt-->
        <xsl:when test="last() > 1">
          <xsl:choose>
            <!--Wenn die Position = 1 ist, wird der Autor geschrieben-->
            <xsl:when test="position() = 1">
              <xsl:apply-templates select="."/>
            </xsl:when>
            <!--Wenn die Position = 2 ist, wird " et al." geschrieben-->
            <xsl:when test="position() = 2">
              <xsl:text> et al.</xsl:text>
            </xsl:when>
            <!--Sonst passiert nichts!-->
          </xsl:choose>
        </xsl:when>
        <!--Sonst wird einfach nur der Autor geschrieben-->
        <xsl:otherwise>
          <xsl:apply-templates select="."/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
    <xsl:value-of select="b:Corporate"/>
  </xsl:template>

  <!--### Abschnitt 6: Hier wird festgelegt, wie der Name einer Einzelnen Person aufgebaut ist.###-->
  <!-- Beispiel: "Vorname Vorname2 Nachname" -->
  <xsl:template match="b:Person">
    <xsl:if test="b:First != ''">
      <xsl:value-of select = "b:First"/>
      <xsl:text> </xsl:text>
    </xsl:if>
    <xsl:if test="b:Middle != ''">
      <xsl:value-of select = "b:Middle"/>
      <xsl:text> </xsl:text>
    </xsl:if>
    <xsl:if test="b:Last != ''">
      <xsl:value-of select = "b:Last"/>
    </xsl:if>
  </xsl:template>

  <xsl:template match = "text()"/>
</xsl:stylesheet>