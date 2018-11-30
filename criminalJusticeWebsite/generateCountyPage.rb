require 'csv'
require 'pry'
# fswatch -0 generateCountyPage.rb | xargs -0 -n1 -I{} ruby generateCountyPage.rb


csv = CSV.read("/Users/destinyrosemurphy/Desktop/County_Data.csv")

i = 1

while i < csv.size
	row2011 = csv[i]
	row2012 = csv[i+1]
	row2013 = csv[i+2]
	row2014 = csv[i+3]
	row2015 = csv[i+4]
	row2016 = csv[i+5]
	row2017 = csv[i+6]

	countyName = csv[i][0]
  totalMisd2017 = row2017[60]
  totalMisdDisp2017 = row2017[61]
  totalFel2017 = row2017[183]
  totalFelDisp2017 = row2017[182]

  totalMisd2016 = row2016[60]
  totalMisdDisp2016 = row2016[61]
  totalFel2016 = row2016[183]
  totalFelDisp2016 = row2016[182]

  totalMisd2015 = row2015[60]
  totalMisdDisp2015 = row2015[61]
  totalFel2015 = row2015[183]
  totalFelDisp2015 = row2015[182]

  totalMisd2014 = row2014[60]
  totalMisdDisp2014 = row2014[61]
  totalFel2014 = row2014[183]
  totalFelDisp2014 = row2014[182]

  totalMisd2013 = row2013[60]
  totalMisdDisp2013 = row2013[61]
  totalFel2013 = row2013[183]
  totalFelDisp2013 = row2013[182]

  totalMisd2012 = row2012[60]
  totalMisdDisp2012 = row2012[61]
  totalFel2012 = row2012[183]
  totalFelDisp2012 = row2012[182]

  totalMisd2011 = row2011[60]
  totalMisdDisp2011 = row2011[61]
  totalFel2011 = row2011[183]
  totalFelDisp2011 = row2011[182]

  felonies2017 = [
    {name: "Capital Murder", count: row2017[63].to_i},
    {name: "Murder", count: row2017[64].to_i},
    {name: "Agg. Ass./Attemp. Murder", count: row2017[65].to_i},
    {name: "Sexual Ass. of Adult", count: row2017[66].to_i},
    {name: "Indecency With/Sexual Ass. of Child", count: row2017[67].to_i},
    {name: "Family Violence Ass.", count: row2017[68].to_i},
    {name: "Agg. Robbery/Robbery", count: row2017[69].to_i},
    {name: "Burglary", count: row2017[70].to_i},
    {name: "Felony Theft", count: row2017[71].to_i},
    {name: "Auto Theft", count: row2017[72].to_i},
    {name: "Drug Sale or Manufacture", count: row2017[73].to_i},
    {name: "Drug Poss.", count: row2017[74].to_i},
    {name: "DWI", count: row2017[75].to_i}
  ]

  sortedFelonies2017 = felonies2017.sort_by{|felony| felony[:count]}
  mostCommonFelony2017 = sortedFelonies2017[-1]
  secondCommonFelony2017 = sortedFelonies2017[-2]
  thirdCommonFelony2017 = sortedFelonies2017[-3]

   misdemeanors2017 = [
    {name: "DWI First Off.", count: row2017[5].to_i},
    {name: "DWI Second Off.", count: row2017[6].to_i},
    {name: "Theft", count: row2017[7].to_i},
    {name: "Theft by Check", count: row2017[8].to_i},
    {name: "Marijuana Poss.", count: row2017[9].to_i},
    {name: "Non-Marijuana Poss. Drug Off.", count: row2017[10].to_i},
    {name: "Family Violence Ass.", count: row2017[11].to_i},
    {name: "Non-Family Violence Ass.", count: row2017[12].to_i},
    {name: "Traffic Off.", count: row2017[13].to_i},
    {name: "Driving While License Suspended/Invalid", count: row2017[14].to_i},
  ]

  sortedMisd2017 = misdemeanors2017.sort_by{|misd| misd[:count]}
  mostCommonMisd2017 = sortedMisd2017[-1]
  secondCommonMisd2017 = sortedMisd2017[-2]
  thirdCommonMisd2017 = sortedMisd2017[-3]

  felonies2016 = [
    {name: "Capital Murder", count: row2016[63].to_i},
    {name: "Murder", count: row2016[64].to_i},
    {name: "Agg. Ass./Attemp. Murder", count: row2016[65].to_i},
    {name: "Sexual Ass. of Adult", count: row2016[66].to_i},
    {name: "Indecency With/Sexual Ass. of Child", count: row2016[67].to_i},
    {name: "Family Violence Ass.", count: row2016[68].to_i},
    {name: "Agg. Robbery/Robbery", count: row2016[69].to_i},
    {name: "Burglary", count: row2016[70].to_i},
    {name: "Felony Theft", count: row2016[71].to_i},
    {name: "Auto Theft", count: row2016[72].to_i},
    {name: "Drug Sale or Manufacture", count: row2016[73].to_i},
    {name: "Drug Poss.", count: row2016[74].to_i},
    {name: "DWI", count: row2016[75].to_i}
  ]

  sortedFelonies2016 = felonies2016.sort_by{|felony| felony[:count]}
  mostCommonFelony2016 = sortedFelonies2016[-1]
  secondCommonFelony2016 = sortedFelonies2016[-2]
  thirdCommonFelony2016 = sortedFelonies2016[-3]

   misdemeanors2016 = [
    {name: "DWI First Off.", count: row2016[5].to_i},
    {name: "DWI Second Off.", count: row2016[6].to_i},
    {name: "Theft", count: row2016[7].to_i},
    {name: "Theft by Check", count: row2016[8].to_i},
    {name: "Marijuana Poss.", count: row2016[9].to_i},
    {name: "Non-Marijuana Poss. Drug Off.", count: row2016[10].to_i},
    {name: "Family Violence Ass.", count: row2016[11].to_i},
    {name: "Non-Family Violence Ass.", count: row2016[12].to_i},
    {name: "Traffic Off.", count: row2016[13].to_i},
    {name: "Driving While License Suspended/Invalid", count: row2016[14].to_i},
  ]

  sortedMisd2016 = misdemeanors2016.sort_by{|misd| misd[:count]}
  mostCommonMisd2016 = sortedMisd2016[-1]
  secondCommonMisd2016 = sortedMisd2016[-2]
  thirdCommonMisd2016 = sortedMisd2016[-3]

  felonies2015 = [
    {name: "Capital Murder", count: row2015[63].to_i},
    {name: "Murder", count: row2015[64].to_i},
    {name: "Agg. Ass./Attemp. Murder", count: row2015[65].to_i},
    {name: "Sexual Ass. of Adult", count: row2015[66].to_i},
    {name: "Indecency With/Sexual Ass. of Child", count: row2015[67].to_i},
    {name: "Family Violence Ass.", count: row2015[68].to_i},
    {name: "Agg. Robbery/Robbery", count: row2015[69].to_i},
    {name: "Burglary", count: row2015[70].to_i},
    {name: "Felony Theft", count: row2015[71].to_i},
    {name: "Auto Theft", count: row2015[72].to_i},
    {name: "Drug Sale or Manufacture", count: row2015[73].to_i},
    {name: "Drug Poss.", count: row2015[74].to_i},
    {name: "DWI", count: row2015[75].to_i}
  ]

  sortedFelonies2015 = felonies2015.sort_by{|felony| felony[:count]}
  mostCommonFelony2015 = sortedFelonies2015[-1]
  secondCommonFelony2015 = sortedFelonies2015[-2]
  thirdCommonFelony2015 = sortedFelonies2015[-3]

   misdemeanors2015 = [
    {name: "DWI First Off.", count: row2015[5].to_i},
    {name: "DWI Second Off.", count: row2015[6].to_i},
    {name: "Theft", count: row2015[7].to_i},
    {name: "Theft by Check", count: row2015[8].to_i},
    {name: "Marijuana Poss.", count: row2015[9].to_i},
    {name: "Non-Marijuana Poss. Drug Off.", count: row2015[10].to_i},
    {name: "Family Violence Ass.", count: row2015[11].to_i},
    {name: "Non-Family Violence Ass.", count: row2015[12].to_i},
    {name: "Traffic Off.", count: row2015[13].to_i},
    {name: "Driving While License Suspended/Invalid", count: row2015[14].to_i},
  ]

  sortedMisd2015 = misdemeanors2015.sort_by{|misd| misd[:count]}
  mostCommonMisd2015 = sortedMisd2015[-1]
  secondCommonMisd2015 = sortedMisd2015[-2]
  thirdCommonMisd2015 = sortedMisd2015[-3]

  felonies2014 = [
    {name: "Capital Murder", count: row2014[63].to_i},
    {name: "Murder", count: row2014[64].to_i},
    {name: "Agg. Ass./Attemp. Murder", count: row2014[65].to_i},
    {name: "Sexual Ass. of Adult", count: row2014[66].to_i},
    {name: "Indecency With/Sexual Ass. of Child", count: row2014[67].to_i},
    {name: "Family Violence Ass.", count: row2014[68].to_i},
    {name: "Agg. Robbery/Robbery", count: row2014[69].to_i},
    {name: "Burglary", count: row2014[70].to_i},
    {name: "Felony Theft", count: row2014[71].to_i},
    {name: "Auto Theft", count: row2014[72].to_i},
    {name: "Drug Sale or Manufacture", count: row2014[73].to_i},
    {name: "Drug Poss.", count: row2014[74].to_i},
    {name: "DWI", count: row2014[75].to_i}
  ]

  sortedFelonies2014 = felonies2014.sort_by{|felony| felony[:count]}
  mostCommonFelony2014 = sortedFelonies2014[-1]
  secondCommonFelony2014 = sortedFelonies2014[-2]
  thirdCommonFelony2014 = sortedFelonies2014[-3]

   misdemeanors2014 = [
    {name: "DWI First Off.", count: row2014[5].to_i},
    {name: "DWI Second Off.", count: row2014[6].to_i},
    {name: "Theft", count: row2014[7].to_i},
    {name: "Theft by Check", count: row2014[8].to_i},
    {name: "Marijuana Poss.", count: row2014[9].to_i},
    {name: "Non-Marijuana Poss. Drug Off.", count: row2014[10].to_i},
    {name: "Family Violence Ass.", count: row2014[11].to_i},
    {name: "Non-Family Violence Ass.", count: row2014[12].to_i},
    {name: "Traffic Off.", count: row2014[13].to_i},
    {name: "Driving While License Suspended/Invalid", count: row2014[14].to_i},
  ]

  sortedMisd2014 = misdemeanors2014.sort_by{|misd| misd[:count]}
  mostCommonMisd2014 = sortedMisd2014[-1]
  secondCommonMisd2014 = sortedMisd2014[-2]
  thirdCommonMisd2014 = sortedMisd2014[-3]

  felonies2013 = [
    {name: "Capital Murder", count: row2013[63].to_i},
    {name: "Murder", count: row2013[64].to_i},
    {name: "Agg. Ass./Attemp. Murder", count: row2013[65].to_i},
    {name: "Sexual Ass. of Adult", count: row2013[66].to_i},
    {name: "Indecency With/Sexual Ass. of Child", count: row2013[67].to_i},
    {name: "Family Violence Ass.", count: row2013[68].to_i},
    {name: "Agg. Robbery/Robbery", count: row2013[69].to_i},
    {name: "Burglary", count: row2013[70].to_i},
    {name: "Felony Theft", count: row2013[71].to_i},
    {name: "Auto Theft", count: row2013[72].to_i},
    {name: "Drug Sale or Manufacture", count: row2013[73].to_i},
    {name: "Drug Poss.", count: row2013[74].to_i},
    {name: "DWI", count: row2013[75].to_i}
  ]

  sortedFelonies2013 = felonies2013.sort_by{|felony| felony[:count]}
  mostCommonFelony2013 = sortedFelonies2013[-1]
  secondCommonFelony2013 = sortedFelonies2013[-2]
  thirdCommonFelony2013 = sortedFelonies2013[-3]

   misdemeanors2013 = [
    {name: "DWI First Off.", count: row2013[5].to_i},
    {name: "DWI Second Off.", count: row2013[6].to_i},
    {name: "Theft", count: row2013[7].to_i},
    {name: "Theft by Check", count: row2013[8].to_i},
    {name: "Marijuana Poss.", count: row2013[9].to_i},
    {name: "Non-Marijuana Poss. Drug Off.", count: row2013[10].to_i},
    {name: "Family Violence Ass.", count: row2013[11].to_i},
    {name: "Non-Family Violence Ass.", count: row2013[12].to_i},
    {name: "Traffic Off.", count: row2013[13].to_i},
    {name: "Driving While License Suspended/Invalid", count: row2013[14].to_i},
  ]

  sortedMisd2013 = misdemeanors2013.sort_by{|misd| misd[:count]}
  mostCommonMisd2013 = sortedMisd2013[-1]
  secondCommonMisd2013 = sortedMisd2013[-2]
  thirdCommonMisd2013 = sortedMisd2013[-3]

  felonies2012 = [
    {name: "Capital Murder", count: row2012[63].to_i},
    {name: "Murder", count: row2012[64].to_i},
    {name: "Agg. Ass./Attemp. Murder", count: row2012[65].to_i},
    {name: "Sexual Ass. of Adult", count: row2012[66].to_i},
    {name: "Indecency With/Sexual Ass. of Child", count: row2012[67].to_i},
    {name: "Family Violence Ass.", count: row2012[68].to_i},
    {name: "Agg. Robbery/Robbery", count: row2012[69].to_i},
    {name: "Burglary", count: row2012[70].to_i},
    {name: "Felony Theft", count: row2012[71].to_i},
    {name: "Auto Theft", count: row2012[72].to_i},
    {name: "Drug Sale or Manufacture", count: row2012[73].to_i},
    {name: "Drug Poss.", count: row2012[74].to_i},
    {name: "DWI", count: row2012[75].to_i}
  ]

  sortedFelonies2012 = felonies2012.sort_by{|felony| felony[:count]}
  mostCommonFelony2012 = sortedFelonies2012[-1]
  secondCommonFelony2012 = sortedFelonies2012[-2]
  thirdCommonFelony2012 = sortedFelonies2012[-3]

   misdemeanors2012 = [
    {name: "DWI First Off.", count: row2012[5].to_i},
    {name: "DWI Second Off.", count: row2012[6].to_i},
    {name: "Theft", count: row2012[7].to_i},
    {name: "Theft by Check", count: row2012[8].to_i},
    {name: "Marijuana Poss.", count: row2012[9].to_i},
    {name: "Non-Marijuana Poss. Drug Off.", count: row2012[10].to_i},
    {name: "Family Violence Ass.", count: row2012[11].to_i},
    {name: "Non-Family Violence Ass.", count: row2012[12].to_i},
    {name: "Traffic Off.", count: row2012[13].to_i},
    {name: "Driving While License Suspended/Invalid", count: row2012[14].to_i},
  ]

  sortedMisd2012 = misdemeanors2012.sort_by{|misd| misd[:count]}
  mostCommonMisd2012 = sortedMisd2012[-1]
  secondCommonMisd2012 = sortedMisd2012[-2]
  thirdCommonMisd2012 = sortedMisd2012[-3]

  felonies2011 = [
    {name: "Capital Murder", count: row2011[63].to_i},
    {name: "Murder", count: row2011[64].to_i},
    {name: "Agg. Ass./Attemp. Murder", count: row2011[65].to_i},
    {name: "Sexual Ass. of Adult", count: row2011[66].to_i},
    {name: "Indecency With/Sexual Ass. of Child", count: row2011[67].to_i},
    {name: "Family Violence Ass.", count: row2011[68].to_i},
    {name: "Agg. Robbery/Robbery", count: row2011[69].to_i},
    {name: "Burglary", count: row2011[70].to_i},
    {name: "Felony Theft", count: row2011[71].to_i},
    {name: "Auto Theft", count: row2011[72].to_i},
    {name: "Drug Sale or Manufacture", count: row2011[73].to_i},
    {name: "Drug Poss.", count: row2011[74].to_i},
    {name: "DWI", count: row2011[75].to_i}
  ]

  sortedFelonies2011 = felonies2011.sort_by{|felony| felony[:count]}
  mostCommonFelony2011 = sortedFelonies2011[-1]
  secondCommonFelony2011 = sortedFelonies2011[-2]
  thirdCommonFelony2011 = sortedFelonies2011[-3]

   misdemeanors2011 = [
    {name: "DWI First Off.", count: row2011[5].to_i},
    {name: "DWI Second Off.", count: row2011[6].to_i},
    {name: "Theft", count: row2011[7].to_i},
    {name: "Theft by Check", count: row2011[8].to_i},
    {name: "Marijuana Poss.", count: row2011[9].to_i},
    {name: "Non-Marijuana Poss. Drug Off.", count: row2011[10].to_i},
    {name: "Family Violence Ass.", count: row2011[11].to_i},
    {name: "Non-Family Violence Ass.", count: row2011[12].to_i},
    {name: "Traffic Off.", count: row2011[13].to_i},
    {name: "Driving While License Suspended/Invalid", count: row2011[14].to_i},
  ]

  sortedMisd2011 = misdemeanors2011.sort_by{|misd| misd[:count]}
  mostCommonMisd2011 = sortedMisd2011[-1]
  secondCommonMisd2011 = sortedMisd2011[-2]
  thirdCommonMisd2011 = sortedMisd2011[-3]



	File.open("/Users/destinyrosemurphy/Desktop/DestinyRoseMurphy.github.io/criminalJusticeWebsite/countyPages/#{countyName}.html", 'w') do |file|

		file.puts <<-ENDPLZ

	<html>
  <head>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.js"></script>
    <script type="text/javascript" src="https://unpkg.com/chartkick@3.0.1/dist/chartkick.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
  </head>
  <body>
    <nav style="background-color: rgb(20,34,53) !important" class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      <a class="navbar-brand" href="index.html"><img style="width: 1.5rem; margin-top: -.5rem" src="http://www.lonestarpolicyinstitute.org/wp-content/uploads/2018/01/Star-96x91.png" class="logo_main" alt="" >Home</a>

      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="methodology.html">../Methodology</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../findings.html">Findings</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../countySelector.html">Find Your County</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="http://www.lonestarpolicyinstitute.org/">LSPI</a>
          </li>

        </ul>
      </div>
    </nav>

    <main role="main" style="background-color: rgb(28,60,95); margin-top: -1rem">
      <!-- /container -->
      <div class="container" style="margin-top: 4rem; background-color: white">
        <h1 style="margin-bottom: 1rem; padding-top: 1rem;"> #{countyName} County</h1>

        <h2 style="margin-bottom: 2rem;border-bottom: dashed 5px;">2017</h2>

        <div class="row">
          <!-- Lefthand Column -->
          <div class="col-sm">
            <div id="top2017Misd" style="height: 300px; margin-left: -2.5rem; margin-bottom: 3rem;"></div>
            <div style="margin-top: 1rem; margin-left: -1rem; background-color: rgba(28,60,95,.75); padding-top: 3rem; padding-bottom: 3rem; color: white; text-align: center; ">
              Total Felonies Filed = #{totalFel2017}
              <br>
              Total Felony Dispositions = #{totalFelDisp2017}</div>
          </div>

          <!-- Righthand Column -->
          <div class="col-sm">
            <div style="margin-top: 4rem; margin-bottom: 9rem; margin-right: -1rem; background-color: rgba(28,60,95,.75); padding-top: 3rem; padding-bottom: 3rem; color: white; text-align: center; ">
              Total Misdemeanors Filed = #{totalMisd2017}
              <br>
              Total Misdemeanor Dispositions = #{totalMisdDisp2017}</div>
            <div id="top2017Felony" style="height: 300px;"></div>
          </div>
        </div>

        <h2 style="margin-bottom: 2rem;border-bottom: dashed 5px;">2016</h2>

        <!-- Lefthand Column -->
        <div class="row">
          <div class="col-sm">
            <div id="top2016Misd" style="height: 300px; margin-left: -2.5rem;margin-bottom: 3rem"></div>
            <div style="margin-top: 1rem; margin-bottom: 3rem; margin-left: -1rem; background-color: rgba(28,60,95,.75); padding-top: 3rem; padding-bottom: 3rem; color: white; text-align: center; ">
              Total Felonies Filed = #{totalFel2016}
              <br>
              Total Felony Dispositions = #{totalFelDisp2016}</div>
          </div>

          <!-- Righthand Column -->
          <div class="col-sm">
            <div style="margin-top: 4rem; margin-bottom: 9rem; margin-right: -1rem; background-color: rgba(28,60,95,.75); padding-top: 3rem; padding-bottom: 3rem; color: white; text-align: center; ">
              Total Misdemeanors Filed = #{totalMisd2016}
              <br>
              Total Misdemeanor Dispositions = #{totalMisdDisp2016}</div>
            <div id="top2016Felony" style="height: 300px; padding-bottom: 2rem"></div>
          </div>
        </div>

        <h2 style="margin-bottom: 2rem;border-bottom: dashed 5px;">2015</h2>

        <!-- Lefthand Column -->
        <div class="row">
          <div class="col-sm">
            <div id="top2015Misd" style="height: 300px; margin-left: -2.5rem;margin-bottom: 3rem"></div>
            <div style="margin-top: 1rem; margin-bottom: 3rem; margin-left: -1rem; background-color: rgba(28,60,95,.75); padding-top: 3rem; padding-bottom: 3rem; color: white; text-align: center; ">
              Total Felonies Filed = #{totalFel2015}
              <br>
              Total Felony Dispositions = #{totalFelDisp2015}</div>
          </div>

          <!-- Righthand Column -->
          <div class="col-sm">
            <div style="margin-top: 4rem; margin-bottom: 9rem; margin-right: -1rem; background-color: rgba(28,60,95,.75); padding-top: 3rem; padding-bottom: 3rem; color: white; text-align: center; ">
              Total Misdemeanors Filed = #{totalMisd2015}
              <br>
              Total Misdemeanor Dispositions = #{totalMisdDisp2015}</div>
            <div id="top2015Felony" style="height: 300px; padding-bottom: 2rem"></div>
          </div>
        </div>

  <h2 style="margin-bottom: 2rem;border-bottom: dashed 5px;">2014</h2>

        <!-- Lefthand Column -->
        <div class="row">
          <div class="col-sm">
            <div id="top2014Misd" style="height: 300px; margin-left: -2.5rem;margin-bottom: 3rem"></div>
            <div style="margin-top: 1rem; margin-bottom: 3rem; margin-left: -1rem; background-color: rgba(28,60,95,.75); padding-top: 3rem; padding-bottom: 3rem; color: white; text-align: center; ">
              Total Felonies Filed = #{totalFel2014}
              <br>
              Total Felony Dispositions = #{totalFelDisp2014}</div>
          </div>

          <!-- Righthand Column -->
          <div class="col-sm">
            <div style="margin-top: 4rem; margin-bottom: 9rem; margin-right: -1rem; background-color: rgba(28,60,95,.75); padding-top: 3rem; padding-bottom: 3rem; color: white; text-align: center; ">
              Total Misdemeanors Filed = #{totalMisd2014}
              <br>
              Total Misdemeanor Dispositions = #{totalMisdDisp2014}</div>
            <div id="top2014Felony" style="height: 300px; padding-bottom: 2rem"></div>
          </div>
        </div>

          <h2 style="margin-bottom: 2rem;border-bottom: dashed 5px;">2013</h2>

        <!-- Lefthand Column -->
        <div class="row">
          <div class="col-sm">
            <div id="top2013Misd" style="height: 300px; margin-left: -2.5rem;margin-bottom: 3rem"></div>
            <div style="margin-top: 1rem; margin-bottom: 3rem; margin-left: -1rem; background-color: rgba(28,60,95,.75); padding-top: 3rem; padding-bottom: 3rem; color: white; text-align: center; ">
              Total Felonies Filed = #{totalFel2013}
              <br>
              Total Felony Dispositions = #{totalFelDisp2013}</div>
          </div>

          <!-- Righthand Column -->
          <div class="col-sm">
            <div style="margin-top: 4rem; margin-bottom: 9rem; margin-right: -1rem; background-color: rgba(28,60,95,.75); padding-top: 3rem; padding-bottom: 3rem; color: white; text-align: center; ">
              Total Misdemeanors Filed = #{totalMisd2013}
              <br>
              Total Misdemeanor Dispositions = #{totalMisdDisp2013}</div>
            <div id="top2013Felony" style="height: 300px; padding-bottom: 2rem"></div>
          </div>
        </div>

          <h2 style="margin-bottom: 2rem;border-bottom: dashed 5px;">2012</h2>

        <!-- Lefthand Column -->
        <div class="row">
          <div class="col-sm">
            <div id="top2012Misd" style="height: 300px; margin-left: -2.5rem;margin-bottom: 3rem"></div>
            <div style="margin-top: 1rem; margin-bottom: 3rem; margin-left: -1rem; background-color: rgba(28,60,95,.75); padding-top: 3rem; padding-bottom: 3rem; color: white; text-align: center; ">
              Total Felonies Filed = #{totalFel2012}
              <br>
              Total Felony Dispositions = #{totalFelDisp2012}</div>
          </div>

          <!-- Righthand Column -->
          <div class="col-sm">
            <div style="margin-top: 4rem; margin-bottom: 9rem; margin-right: -1rem; background-color: rgba(28,60,95,.75); padding-top: 3rem; padding-bottom: 3rem; color: white; text-align: center; ">
              Total Misdemeanors Filed = #{totalMisd2012}
              <br>
              Total Misdemeanor Dispositions = #{totalMisdDisp2012}</div>
            <div id="top2012Felony" style="height: 300px; padding-bottom: 2rem"></div>
          </div>
        </div>

          <h2 style="margin-bottom: 2rem;border-bottom: dashed 5px;">2011</h2>

        <!-- Lefthand Column -->
        <div class="row">
          <div class="col-sm">
            <div id="top2011Misd" style="height: 300px; margin-left: -2.5rem;margin-bottom: 3rem"></div>
            <div style="margin-top: 1rem; margin-bottom: 3rem; margin-left: -1rem; background-color: rgba(28,60,95,.75); padding-top: 3rem; padding-bottom: 3rem; color: white; text-align: center; ">
              Total Felonies Filed = #{totalFel2011}
              <br>
              Total Felony Dispositions = #{totalFelDisp2011}</div>
          </div>

          <!-- Righthand Column -->
          <div class="col-sm">
            <div style="margin-top: 4rem; margin-bottom: 9rem; margin-right: -1rem; background-color: rgba(28,60,95,.75); padding-top: 3rem; padding-bottom: 3rem; color: white; text-align: center; ">
              Total Misdemeanors Filed = #{totalMisd2011}
              <br>
              Total Misdemeanor Dispositions = #{totalMisdDisp2011}</div>
            <div id="top2011Felony" style="height: 300px; padding-bottom: 2rem"></div>
          </div>
        </div>


    </main>

    <footer style="background-color: rgb(20,34,53);" class="">
      <p style="color: white; text-align: center;">Created by <a href ="http://www.destinyrosemurphy.com/">Destiny Rose Murphy</a> with help from <a href ="https://christian.gen.co/">Christian Genco</a></p>
    </footer>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script>

      new Chartkick.ColumnChart("top2017Felony", [
        ["#{mostCommonFelony2017[:name].to_s}", "#{mostCommonFelony2017[:count].to_s}"],
        ["#{secondCommonFelony2017[:name].to_s}", "#{secondCommonFelony2017[:count].to_s}"],
        ["#{thirdCommonFelony2017[:name].to_s}", "#{thirdCommonFelony2017[:count].to_s}"],
        ],
        {colors: ["#b00", "#666"], xtitle: "", ytitle: "# of Felonies"}
        )
      
        new Chartkick.ColumnChart("top2017Misd", [
       ["#{mostCommonMisd2017[:name].to_s}", "#{mostCommonMisd2017[:count].to_s}"],
        ["#{secondCommonMisd2017[:name].to_s}", "#{secondCommonMisd2017[:count].to_s}"],
        ["#{thirdCommonMisd2017[:name].to_s}", "#{thirdCommonMisd2017[:count].to_s}"],
        ],
        {colors: ["#b00", "#666"], xtitle: "", ytitle: "# of Misd."}
        )

        <!-- 2016 graphs --->

        new Chartkick.ColumnChart("top2016Felony", [
        ["#{mostCommonFelony2016[:name].to_s}", "#{mostCommonFelony2016[:count].to_s}"],
        ["#{secondCommonFelony2016[:name].to_s}", "#{secondCommonFelony2016[:count].to_s}"],
        ["#{thirdCommonFelony2016[:name].to_s}", "#{thirdCommonFelony2016[:count].to_s}"],
        ],
        {colors: ["#b00", "#666"], xtitle: "", ytitle: "# of Felonies"}
        )
      
        new Chartkick.ColumnChart("top2016Misd", [
       ["#{mostCommonMisd2016[:name].to_s}", "#{mostCommonMisd2016[:count].to_s}"],
        ["#{secondCommonMisd2016[:name].to_s}", "#{secondCommonMisd2016[:count].to_s}"],
        ["#{thirdCommonMisd2016[:name].to_s}", "#{thirdCommonMisd2016[:count].to_s}"],
        ],
        {colors: ["#b00", "#666"], xtitle: "", ytitle: "# of Misd."}
        )

        <!-- 2015 graphs --->

        new Chartkick.ColumnChart("top2015Felony", [
        ["#{mostCommonFelony2015[:name].to_s}", "#{mostCommonFelony2015[:count].to_s}"],
        ["#{secondCommonFelony2015[:name].to_s}", "#{secondCommonFelony2015[:count].to_s}"],
        ["#{thirdCommonFelony2015[:name].to_s}", "#{thirdCommonFelony2015[:count].to_s}"],
        ],
        {colors: ["#b00", "#666"], xtitle: "", ytitle: "# of Felonies"}
        )
      
        new Chartkick.ColumnChart("top2015Misd", [
       ["#{mostCommonMisd2015[:name].to_s}", "#{mostCommonMisd2015[:count].to_s}"],
        ["#{secondCommonMisd2015[:name].to_s}", "#{secondCommonMisd2015[:count].to_s}"],
        ["#{thirdCommonMisd2015[:name].to_s}", "#{thirdCommonMisd2015[:count].to_s}"],
        ],
        {colors: ["#b00", "#666"], xtitle: "", ytitle: "# of Misd."}
        )

         <!-- 2014 graphs --->

        new Chartkick.ColumnChart("top2014Felony", [
        ["#{mostCommonFelony2014[:name].to_s}", "#{mostCommonFelony2014[:count].to_s}"],
        ["#{secondCommonFelony2014[:name].to_s}", "#{secondCommonFelony2014[:count].to_s}"],
        ["#{thirdCommonFelony2014[:name].to_s}", "#{thirdCommonFelony2014[:count].to_s}"],
        ],
        {colors: ["#b00", "#666"], xtitle: "", ytitle: "# of Felonies"}
        )
      
        new Chartkick.ColumnChart("top2014Misd", [
       ["#{mostCommonMisd2014[:name].to_s}", "#{mostCommonMisd2014[:count].to_s}"],
        ["#{secondCommonMisd2014[:name].to_s}", "#{secondCommonMisd2014[:count].to_s}"],
        ["#{thirdCommonMisd2014[:name].to_s}", "#{thirdCommonMisd2014[:count].to_s}"],
        ],
        {colors: ["#b00", "#666"], xtitle: "", ytitle: "# of Misd."}
        )

           <!-- 2013 graphs --->

        new Chartkick.ColumnChart("top2013Felony", [
        ["#{mostCommonFelony2013[:name].to_s}", "#{mostCommonFelony2013[:count].to_s}"],
        ["#{secondCommonFelony2013[:name].to_s}", "#{secondCommonFelony2013[:count].to_s}"],
        ["#{thirdCommonFelony2013[:name].to_s}", "#{thirdCommonFelony2013[:count].to_s}"],
        ],
        {colors: ["#b00", "#666"], xtitle: "", ytitle: "# of Felonies"}
        )
      
        new Chartkick.ColumnChart("top2013Misd", [
       ["#{mostCommonMisd2013[:name].to_s}", "#{mostCommonMisd2013[:count].to_s}"],
        ["#{secondCommonMisd2013[:name].to_s}", "#{secondCommonMisd2013[:count].to_s}"],
        ["#{thirdCommonMisd2013[:name].to_s}", "#{thirdCommonMisd2013[:count].to_s}"],
        ],
        {colors: ["#b00", "#666"], xtitle: "", ytitle: "# of Misd."}
        )

           <!-- 2012 graphs --->

        new Chartkick.ColumnChart("top2012Felony", [
        ["#{mostCommonFelony2012[:name].to_s}", "#{mostCommonFelony2012[:count].to_s}"],
        ["#{secondCommonFelony2012[:name].to_s}", "#{secondCommonFelony2012[:count].to_s}"],
        ["#{thirdCommonFelony2012[:name].to_s}", "#{thirdCommonFelony2012[:count].to_s}"],
        ],
        {colors: ["#b00", "#666"], xtitle: "", ytitle: "# of Felonies"}
        )
      
        new Chartkick.ColumnChart("top2012Misd", [
       ["#{mostCommonMisd2012[:name].to_s}", "#{mostCommonMisd2012[:count].to_s}"],
        ["#{secondCommonMisd2012[:name].to_s}", "#{secondCommonMisd2012[:count].to_s}"],
        ["#{thirdCommonMisd2012[:name].to_s}", "#{thirdCommonMisd2012[:count].to_s}"],
        ],
        {colors: ["#b00", "#666"], xtitle: "", ytitle: "# of Misd."}
        )

           <!-- 2011 graphs --->

        new Chartkick.ColumnChart("top2011Felony", [
        ["#{mostCommonFelony2011[:name].to_s}", "#{mostCommonFelony2011[:count].to_s}"],
        ["#{secondCommonFelony2011[:name].to_s}", "#{secondCommonFelony2011[:count].to_s}"],
        ["#{thirdCommonFelony2011[:name].to_s}", "#{thirdCommonFelony2011[:count].to_s}"],
        ],
        {colors: ["#b00", "#666"], xtitle: "", ytitle: "# of Felonies"}
        )
      
        new Chartkick.ColumnChart("top2011Misd", [
       ["#{mostCommonMisd2011[:name].to_s}", "#{mostCommonMisd2011[:count].to_s}"],
        ["#{secondCommonMisd2011[:name].to_s}", "#{secondCommonMisd2011[:count].to_s}"],
        ["#{thirdCommonMisd2011[:name].to_s}", "#{thirdCommonMisd2011[:count].to_s}"],
        ],
        {colors: ["#b00", "#666"], xtitle: "", ytitle: "# of Misd."}
        )


    </script>
  </body>
  </html>


		ENDPLZ

	end



	i = i + 7

end

