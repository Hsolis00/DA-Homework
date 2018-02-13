

```python
# Dependencies
import pandas as pd
import numpy as np
import json
```


```python
# Read json file to dataframes
df1 = pd.read_json('https://raw.githubusercontent.com/the-Coding-Boot-Camp-at-UT/UTAUS201801DATA2-Class-Repository-DATA/master/Homework/04-Numpy-Pandas/HeroesOfPymoli/purchase_data.json?token=Afe7ny6mYLoUmEmf1AxVrBZcI30-cIHrks5aijjcwA%3D%3D')
df2 = pd.read_json('https://raw.githubusercontent.com/the-Coding-Boot-Camp-at-UT/UTAUS201801DATA2-Class-Repository-DATA/master/Homework/04-Numpy-Pandas/HeroesOfPymoli/purchase_data2.json?token=Afe7nyZZkyO7kn41lwRiqer16oQmMaKXks5aijnbwA%3D%3D')
df1
df2
```




<div>
<style>
    .dataframe thead tr:only-child th {
        text-align: right;
    }

    .dataframe thead th {
        text-align: left;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Age</th>
      <th>Gender</th>
      <th>Item ID</th>
      <th>Item Name</th>
      <th>Price</th>
      <th>SN</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>20</td>
      <td>Male</td>
      <td>93</td>
      <td>Apocalyptic Battlescythe</td>
      <td>4.49</td>
      <td>Iloni35</td>
    </tr>
    <tr>
      <th>1</th>
      <td>21</td>
      <td>Male</td>
      <td>12</td>
      <td>Dawne</td>
      <td>3.36</td>
      <td>Aidaira26</td>
    </tr>
    <tr>
      <th>2</th>
      <td>17</td>
      <td>Male</td>
      <td>5</td>
      <td>Putrid Fan</td>
      <td>2.63</td>
      <td>Irim47</td>
    </tr>
    <tr>
      <th>3</th>
      <td>17</td>
      <td>Male</td>
      <td>123</td>
      <td>Twilight's Carver</td>
      <td>2.55</td>
      <td>Irith83</td>
    </tr>
    <tr>
      <th>4</th>
      <td>22</td>
      <td>Male</td>
      <td>154</td>
      <td>Feral Katana</td>
      <td>4.11</td>
      <td>Philodil43</td>
    </tr>
    <tr>
      <th>5</th>
      <td>8</td>
      <td>Male</td>
      <td>8</td>
      <td>Purgatory, Gem of Regret</td>
      <td>2.22</td>
      <td>Hainaria90</td>
    </tr>
    <tr>
      <th>6</th>
      <td>40</td>
      <td>Male</td>
      <td>148</td>
      <td>Warmonger, Gift of Suffering's End</td>
      <td>4.65</td>
      <td>Aerithllora36</td>
    </tr>
    <tr>
      <th>7</th>
      <td>28</td>
      <td>Male</td>
      <td>27</td>
      <td>Riddle, Tribute of Ended Dreams</td>
      <td>3.38</td>
      <td>Undirra90</td>
    </tr>
    <tr>
      <th>8</th>
      <td>18</td>
      <td>Male</td>
      <td>111</td>
      <td>Misery's End</td>
      <td>1.79</td>
      <td>Eolideu96</td>
    </tr>
    <tr>
      <th>9</th>
      <td>36</td>
      <td>Male</td>
      <td>139</td>
      <td>Mercy, Katana of Dismay</td>
      <td>4.25</td>
      <td>Aesurstilis64</td>
    </tr>
    <tr>
      <th>10</th>
      <td>24</td>
      <td>Male</td>
      <td>126</td>
      <td>Exiled Mithril Longsword</td>
      <td>1.08</td>
      <td>Jiskimsda56</td>
    </tr>
    <tr>
      <th>11</th>
      <td>36</td>
      <td>Female</td>
      <td>173</td>
      <td>Stormfury Longsword</td>
      <td>4.01</td>
      <td>Jiskim75</td>
    </tr>
    <tr>
      <th>12</th>
      <td>20</td>
      <td>Female</td>
      <td>90</td>
      <td>Betrayer</td>
      <td>4.12</td>
      <td>Lirtassa77</td>
    </tr>
    <tr>
      <th>13</th>
      <td>32</td>
      <td>Male</td>
      <td>23</td>
      <td>Crucifer</td>
      <td>1.62</td>
      <td>Hairith93</td>
    </tr>
    <tr>
      <th>14</th>
      <td>8</td>
      <td>Male</td>
      <td>44</td>
      <td>Bonecarvin Battle Axe</td>
      <td>4.36</td>
      <td>Yarith71</td>
    </tr>
    <tr>
      <th>15</th>
      <td>23</td>
      <td>Male</td>
      <td>94</td>
      <td>Mourning Blade</td>
      <td>3.64</td>
      <td>Sondim43</td>
    </tr>
    <tr>
      <th>16</th>
      <td>24</td>
      <td>Male</td>
      <td>174</td>
      <td>Primitive Blade</td>
      <td>1.36</td>
      <td>Zhisrisu83</td>
    </tr>
    <tr>
      <th>17</th>
      <td>9</td>
      <td>Male</td>
      <td>156</td>
      <td>Soul-Forged Steel Shortsword</td>
      <td>4.53</td>
      <td>Rarallo90</td>
    </tr>
    <tr>
      <th>18</th>
      <td>12</td>
      <td>Other / Non-Disclosed</td>
      <td>176</td>
      <td>Relentless Iron Skewer</td>
      <td>2.12</td>
      <td>Inadeu25</td>
    </tr>
    <tr>
      <th>19</th>
      <td>23</td>
      <td>Male</td>
      <td>154</td>
      <td>Feral Katana</td>
      <td>4.11</td>
      <td>Haerithp41</td>
    </tr>
    <tr>
      <th>20</th>
      <td>35</td>
      <td>Male</td>
      <td>10</td>
      <td>Sleepwalker</td>
      <td>1.81</td>
      <td>Streural92</td>
    </tr>
    <tr>
      <th>21</th>
      <td>11</td>
      <td>Male</td>
      <td>131</td>
      <td>Fury</td>
      <td>2.99</td>
      <td>Eoralphos86</td>
    </tr>
    <tr>
      <th>22</th>
      <td>16</td>
      <td>Male</td>
      <td>172</td>
      <td>Blade of the Grave</td>
      <td>2.71</td>
      <td>Shaidanu32</td>
    </tr>
    <tr>
      <th>23</th>
      <td>20</td>
      <td>Male</td>
      <td>158</td>
      <td>Darkheart, Butcher of the Champion</td>
      <td>1.94</td>
      <td>Lassimla92</td>
    </tr>
    <tr>
      <th>24</th>
      <td>23</td>
      <td>Male</td>
      <td>70</td>
      <td>Hope's End</td>
      <td>4.28</td>
      <td>Heosurnuru52</td>
    </tr>
    <tr>
      <th>25</th>
      <td>17</td>
      <td>Male</td>
      <td>71</td>
      <td>Demise</td>
      <td>3.09</td>
      <td>Ilara98</td>
    </tr>
    <tr>
      <th>26</th>
      <td>7</td>
      <td>Male</td>
      <td>98</td>
      <td>Deadline, Voice Of Subtlety</td>
      <td>1.29</td>
      <td>Lirtistanya48</td>
    </tr>
    <tr>
      <th>27</th>
      <td>25</td>
      <td>Male</td>
      <td>117</td>
      <td>Heartstriker, Legacy of the Light</td>
      <td>4.71</td>
      <td>Sundaky74</td>
    </tr>
    <tr>
      <th>28</th>
      <td>20</td>
      <td>Female</td>
      <td>170</td>
      <td>Shadowsteel</td>
      <td>1.74</td>
      <td>Sondassasya91</td>
    </tr>
    <tr>
      <th>29</th>
      <td>21</td>
      <td>Male</td>
      <td>90</td>
      <td>Betrayer</td>
      <td>4.12</td>
      <td>Arithllorin55</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>48</th>
      <td>25</td>
      <td>Male</td>
      <td>84</td>
      <td>Arcane Gem</td>
      <td>4.81</td>
      <td>Eusty71</td>
    </tr>
    <tr>
      <th>49</th>
      <td>20</td>
      <td>Male</td>
      <td>14</td>
      <td>Possessed Core</td>
      <td>2.82</td>
      <td>Frichilsa31</td>
    </tr>
    <tr>
      <th>50</th>
      <td>23</td>
      <td>Male</td>
      <td>176</td>
      <td>Relentless Iron Skewer</td>
      <td>2.12</td>
      <td>Filon68</td>
    </tr>
    <tr>
      <th>51</th>
      <td>28</td>
      <td>Male</td>
      <td>1</td>
      <td>Crucifer</td>
      <td>3.67</td>
      <td>Palyon91</td>
    </tr>
    <tr>
      <th>52</th>
      <td>23</td>
      <td>Female</td>
      <td>118</td>
      <td>Ghost Reaver, Longsword of Magic</td>
      <td>2.95</td>
      <td>Assistast50</td>
    </tr>
    <tr>
      <th>53</th>
      <td>16</td>
      <td>Female</td>
      <td>94</td>
      <td>Mourning Blade</td>
      <td>3.64</td>
      <td>Seostylis96</td>
    </tr>
    <tr>
      <th>54</th>
      <td>25</td>
      <td>Male</td>
      <td>111</td>
      <td>Misery's End</td>
      <td>1.79</td>
      <td>Iskadar31</td>
    </tr>
    <tr>
      <th>55</th>
      <td>20</td>
      <td>Male</td>
      <td>108</td>
      <td>Extraction, Quickblade Of Trembling Hands</td>
      <td>2.26</td>
      <td>Pheodaisun84</td>
    </tr>
    <tr>
      <th>56</th>
      <td>17</td>
      <td>Male</td>
      <td>79</td>
      <td>Alpha, Oath of Zeal</td>
      <td>1.31</td>
      <td>Yarmol79</td>
    </tr>
    <tr>
      <th>57</th>
      <td>23</td>
      <td>Female</td>
      <td>107</td>
      <td>Splitter, Foe Of Subtlety</td>
      <td>4.15</td>
      <td>Aeri79</td>
    </tr>
    <tr>
      <th>58</th>
      <td>30</td>
      <td>Female</td>
      <td>105</td>
      <td>Hailstorm Shadowsteel Scythe</td>
      <td>1.02</td>
      <td>Undosian34</td>
    </tr>
    <tr>
      <th>59</th>
      <td>39</td>
      <td>Female</td>
      <td>2</td>
      <td>Verdict</td>
      <td>2.65</td>
      <td>Aesririam61</td>
    </tr>
    <tr>
      <th>60</th>
      <td>23</td>
      <td>Female</td>
      <td>68</td>
      <td>Storm-Weaver, Slayer of Inception</td>
      <td>4.39</td>
      <td>Firon67</td>
    </tr>
    <tr>
      <th>61</th>
      <td>21</td>
      <td>Male</td>
      <td>31</td>
      <td>Trickster</td>
      <td>4.59</td>
      <td>Jiskjask76</td>
    </tr>
    <tr>
      <th>62</th>
      <td>18</td>
      <td>Male</td>
      <td>25</td>
      <td>Hero Cane</td>
      <td>4.78</td>
      <td>Chanirra64</td>
    </tr>
    <tr>
      <th>63</th>
      <td>11</td>
      <td>Female</td>
      <td>41</td>
      <td>Orbit</td>
      <td>3.85</td>
      <td>Isristira52</td>
    </tr>
    <tr>
      <th>64</th>
      <td>24</td>
      <td>Male</td>
      <td>164</td>
      <td>Exiled Doomblade</td>
      <td>1.31</td>
      <td>Chaniman66</td>
    </tr>
    <tr>
      <th>65</th>
      <td>23</td>
      <td>Male</td>
      <td>181</td>
      <td>Reaper's Toll</td>
      <td>4.12</td>
      <td>Yarithrgue83</td>
    </tr>
    <tr>
      <th>66</th>
      <td>24</td>
      <td>Male</td>
      <td>4</td>
      <td>Bloodlord's Fetish</td>
      <td>1.91</td>
      <td>Airi27</td>
    </tr>
    <tr>
      <th>67</th>
      <td>22</td>
      <td>Male</td>
      <td>94</td>
      <td>Mourning Blade</td>
      <td>3.64</td>
      <td>Undilsan50</td>
    </tr>
    <tr>
      <th>68</th>
      <td>21</td>
      <td>Male</td>
      <td>82</td>
      <td>Nirvana</td>
      <td>1.77</td>
      <td>Aidaira26</td>
    </tr>
    <tr>
      <th>69</th>
      <td>34</td>
      <td>Male</td>
      <td>126</td>
      <td>Exiled Mithril Longsword</td>
      <td>1.08</td>
      <td>Chamalo71</td>
    </tr>
    <tr>
      <th>70</th>
      <td>25</td>
      <td>Male</td>
      <td>98</td>
      <td>Deadline, Voice Of Subtlety</td>
      <td>1.29</td>
      <td>Undadar97</td>
    </tr>
    <tr>
      <th>71</th>
      <td>25</td>
      <td>Male</td>
      <td>60</td>
      <td>Wolf</td>
      <td>2.70</td>
      <td>Sundaky74</td>
    </tr>
    <tr>
      <th>72</th>
      <td>21</td>
      <td>Male</td>
      <td>180</td>
      <td>Stormcaller</td>
      <td>2.77</td>
      <td>Lisirra44</td>
    </tr>
    <tr>
      <th>73</th>
      <td>35</td>
      <td>Male</td>
      <td>93</td>
      <td>Apocalyptic Battlescythe</td>
      <td>4.49</td>
      <td>Chamast86</td>
    </tr>
    <tr>
      <th>74</th>
      <td>38</td>
      <td>Male</td>
      <td>163</td>
      <td>Thunderfury Scimitar</td>
      <td>4.16</td>
      <td>Ardcil81</td>
    </tr>
    <tr>
      <th>75</th>
      <td>15</td>
      <td>Male</td>
      <td>167</td>
      <td>Malice, Legacy of the Queen</td>
      <td>3.25</td>
      <td>Heudai45</td>
    </tr>
    <tr>
      <th>76</th>
      <td>24</td>
      <td>Male</td>
      <td>97</td>
      <td>Swan Song, Gouger Of Terror</td>
      <td>1.92</td>
      <td>Chaniman66</td>
    </tr>
    <tr>
      <th>77</th>
      <td>20</td>
      <td>Male</td>
      <td>134</td>
      <td>Undead Crusader</td>
      <td>2.15</td>
      <td>Syalallodil59</td>
    </tr>
  </tbody>
</table>
<p>78 rows × 6 columns</p>
</div>




```python
# Merge dataframes
purchase_data = pd.merge(df1, df2, how='outer')
# Rename columns
pd_all = purchase_data.rename(columns={'Item ID': 'Item_ID','Item Name': 'Item_Name'})
pd_all
```




<div>
<style>
    .dataframe thead tr:only-child th {
        text-align: right;
    }

    .dataframe thead th {
        text-align: left;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Age</th>
      <th>Gender</th>
      <th>Item_ID</th>
      <th>Item_Name</th>
      <th>Price</th>
      <th>SN</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>38</td>
      <td>Male</td>
      <td>165</td>
      <td>Bone Crushing Silver Skewer</td>
      <td>3.37</td>
      <td>Aelalis34</td>
    </tr>
    <tr>
      <th>1</th>
      <td>21</td>
      <td>Male</td>
      <td>119</td>
      <td>Stormbringer, Dark Blade of Ending Misery</td>
      <td>2.32</td>
      <td>Eolo46</td>
    </tr>
    <tr>
      <th>2</th>
      <td>34</td>
      <td>Male</td>
      <td>174</td>
      <td>Primitive Blade</td>
      <td>2.46</td>
      <td>Assastnya25</td>
    </tr>
    <tr>
      <th>3</th>
      <td>21</td>
      <td>Male</td>
      <td>92</td>
      <td>Final Critic</td>
      <td>1.36</td>
      <td>Pheusrical25</td>
    </tr>
    <tr>
      <th>4</th>
      <td>23</td>
      <td>Male</td>
      <td>63</td>
      <td>Stormfury Mace</td>
      <td>1.27</td>
      <td>Aela59</td>
    </tr>
    <tr>
      <th>5</th>
      <td>20</td>
      <td>Male</td>
      <td>10</td>
      <td>Sleepwalker</td>
      <td>1.73</td>
      <td>Tanimnya91</td>
    </tr>
    <tr>
      <th>6</th>
      <td>20</td>
      <td>Male</td>
      <td>153</td>
      <td>Mercenary Sabre</td>
      <td>4.57</td>
      <td>Undjaskla97</td>
    </tr>
    <tr>
      <th>7</th>
      <td>29</td>
      <td>Female</td>
      <td>169</td>
      <td>Interrogator, Blood Blade of the Queen</td>
      <td>3.32</td>
      <td>Iathenudil29</td>
    </tr>
    <tr>
      <th>8</th>
      <td>25</td>
      <td>Male</td>
      <td>118</td>
      <td>Ghost Reaver, Longsword of Magic</td>
      <td>2.77</td>
      <td>Sondenasta63</td>
    </tr>
    <tr>
      <th>9</th>
      <td>31</td>
      <td>Male</td>
      <td>99</td>
      <td>Expiration, Warscythe Of Lost Worlds</td>
      <td>4.53</td>
      <td>Hilaerin92</td>
    </tr>
    <tr>
      <th>10</th>
      <td>24</td>
      <td>Male</td>
      <td>57</td>
      <td>Despair, Favor of Due Diligence</td>
      <td>3.81</td>
      <td>Chamosia29</td>
    </tr>
    <tr>
      <th>11</th>
      <td>20</td>
      <td>Male</td>
      <td>47</td>
      <td>Alpha, Reach of Ending Hope</td>
      <td>1.55</td>
      <td>Sally64</td>
    </tr>
    <tr>
      <th>12</th>
      <td>30</td>
      <td>Male</td>
      <td>81</td>
      <td>Dreamkiss</td>
      <td>4.06</td>
      <td>Iskossa88</td>
    </tr>
    <tr>
      <th>13</th>
      <td>23</td>
      <td>Male</td>
      <td>77</td>
      <td>Piety, Guardian of Riddles</td>
      <td>3.68</td>
      <td>Seorithstilis90</td>
    </tr>
    <tr>
      <th>14</th>
      <td>40</td>
      <td>Male</td>
      <td>44</td>
      <td>Bonecarvin Battle Axe</td>
      <td>2.46</td>
      <td>Sundast29</td>
    </tr>
    <tr>
      <th>15</th>
      <td>21</td>
      <td>Male</td>
      <td>96</td>
      <td>Blood-Forged Skeletal Spine</td>
      <td>4.77</td>
      <td>Haellysu29</td>
    </tr>
    <tr>
      <th>16</th>
      <td>22</td>
      <td>Female</td>
      <td>123</td>
      <td>Twilight's Carver</td>
      <td>1.14</td>
      <td>Sundista85</td>
    </tr>
    <tr>
      <th>17</th>
      <td>22</td>
      <td>Female</td>
      <td>59</td>
      <td>Lightning, Etcher of the King</td>
      <td>1.65</td>
      <td>Aenarap34</td>
    </tr>
    <tr>
      <th>18</th>
      <td>28</td>
      <td>Male</td>
      <td>91</td>
      <td>Celeste</td>
      <td>3.71</td>
      <td>Iskista88</td>
    </tr>
    <tr>
      <th>19</th>
      <td>31</td>
      <td>Male</td>
      <td>177</td>
      <td>Winterthorn, Defender of Shifting Worlds</td>
      <td>4.89</td>
      <td>Assossa43</td>
    </tr>
    <tr>
      <th>20</th>
      <td>24</td>
      <td>Male</td>
      <td>78</td>
      <td>Glimmer, Ender of the Moon</td>
      <td>2.33</td>
      <td>Irith83</td>
    </tr>
    <tr>
      <th>21</th>
      <td>15</td>
      <td>Male</td>
      <td>3</td>
      <td>Phantomlight</td>
      <td>1.79</td>
      <td>Iaralrgue74</td>
    </tr>
    <tr>
      <th>22</th>
      <td>11</td>
      <td>Female</td>
      <td>11</td>
      <td>Brimstone</td>
      <td>2.52</td>
      <td>Deural48</td>
    </tr>
    <tr>
      <th>23</th>
      <td>19</td>
      <td>Male</td>
      <td>183</td>
      <td>Dragon's Greatsword</td>
      <td>2.36</td>
      <td>Chanosia65</td>
    </tr>
    <tr>
      <th>24</th>
      <td>11</td>
      <td>Male</td>
      <td>65</td>
      <td>Conqueror Adamantite Mace</td>
      <td>1.96</td>
      <td>Qarwen67</td>
    </tr>
    <tr>
      <th>25</th>
      <td>21</td>
      <td>Male</td>
      <td>63</td>
      <td>Stormfury Mace</td>
      <td>1.27</td>
      <td>Idai61</td>
    </tr>
    <tr>
      <th>26</th>
      <td>29</td>
      <td>Male</td>
      <td>132</td>
      <td>Persuasion</td>
      <td>3.90</td>
      <td>Aerithllora36</td>
    </tr>
    <tr>
      <th>27</th>
      <td>34</td>
      <td>Male</td>
      <td>106</td>
      <td>Crying Steel Sickle</td>
      <td>2.29</td>
      <td>Assastnya25</td>
    </tr>
    <tr>
      <th>28</th>
      <td>15</td>
      <td>Male</td>
      <td>49</td>
      <td>The Oculus, Token of Lost Worlds</td>
      <td>4.23</td>
      <td>Ilariarin45</td>
    </tr>
    <tr>
      <th>29</th>
      <td>16</td>
      <td>Female</td>
      <td>45</td>
      <td>Glinting Glass Edge</td>
      <td>2.46</td>
      <td>Phaedai25</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>828</th>
      <td>25</td>
      <td>Male</td>
      <td>84</td>
      <td>Arcane Gem</td>
      <td>4.81</td>
      <td>Eusty71</td>
    </tr>
    <tr>
      <th>829</th>
      <td>20</td>
      <td>Male</td>
      <td>14</td>
      <td>Possessed Core</td>
      <td>2.82</td>
      <td>Frichilsa31</td>
    </tr>
    <tr>
      <th>830</th>
      <td>23</td>
      <td>Male</td>
      <td>176</td>
      <td>Relentless Iron Skewer</td>
      <td>2.12</td>
      <td>Filon68</td>
    </tr>
    <tr>
      <th>831</th>
      <td>28</td>
      <td>Male</td>
      <td>1</td>
      <td>Crucifer</td>
      <td>3.67</td>
      <td>Palyon91</td>
    </tr>
    <tr>
      <th>832</th>
      <td>23</td>
      <td>Female</td>
      <td>118</td>
      <td>Ghost Reaver, Longsword of Magic</td>
      <td>2.95</td>
      <td>Assistast50</td>
    </tr>
    <tr>
      <th>833</th>
      <td>16</td>
      <td>Female</td>
      <td>94</td>
      <td>Mourning Blade</td>
      <td>3.64</td>
      <td>Seostylis96</td>
    </tr>
    <tr>
      <th>834</th>
      <td>25</td>
      <td>Male</td>
      <td>111</td>
      <td>Misery's End</td>
      <td>1.79</td>
      <td>Iskadar31</td>
    </tr>
    <tr>
      <th>835</th>
      <td>20</td>
      <td>Male</td>
      <td>108</td>
      <td>Extraction, Quickblade Of Trembling Hands</td>
      <td>2.26</td>
      <td>Pheodaisun84</td>
    </tr>
    <tr>
      <th>836</th>
      <td>17</td>
      <td>Male</td>
      <td>79</td>
      <td>Alpha, Oath of Zeal</td>
      <td>1.31</td>
      <td>Yarmol79</td>
    </tr>
    <tr>
      <th>837</th>
      <td>23</td>
      <td>Female</td>
      <td>107</td>
      <td>Splitter, Foe Of Subtlety</td>
      <td>4.15</td>
      <td>Aeri79</td>
    </tr>
    <tr>
      <th>838</th>
      <td>30</td>
      <td>Female</td>
      <td>105</td>
      <td>Hailstorm Shadowsteel Scythe</td>
      <td>1.02</td>
      <td>Undosian34</td>
    </tr>
    <tr>
      <th>839</th>
      <td>39</td>
      <td>Female</td>
      <td>2</td>
      <td>Verdict</td>
      <td>2.65</td>
      <td>Aesririam61</td>
    </tr>
    <tr>
      <th>840</th>
      <td>23</td>
      <td>Female</td>
      <td>68</td>
      <td>Storm-Weaver, Slayer of Inception</td>
      <td>4.39</td>
      <td>Firon67</td>
    </tr>
    <tr>
      <th>841</th>
      <td>21</td>
      <td>Male</td>
      <td>31</td>
      <td>Trickster</td>
      <td>4.59</td>
      <td>Jiskjask76</td>
    </tr>
    <tr>
      <th>842</th>
      <td>18</td>
      <td>Male</td>
      <td>25</td>
      <td>Hero Cane</td>
      <td>4.78</td>
      <td>Chanirra64</td>
    </tr>
    <tr>
      <th>843</th>
      <td>11</td>
      <td>Female</td>
      <td>41</td>
      <td>Orbit</td>
      <td>3.85</td>
      <td>Isristira52</td>
    </tr>
    <tr>
      <th>844</th>
      <td>24</td>
      <td>Male</td>
      <td>164</td>
      <td>Exiled Doomblade</td>
      <td>1.31</td>
      <td>Chaniman66</td>
    </tr>
    <tr>
      <th>845</th>
      <td>23</td>
      <td>Male</td>
      <td>181</td>
      <td>Reaper's Toll</td>
      <td>4.12</td>
      <td>Yarithrgue83</td>
    </tr>
    <tr>
      <th>846</th>
      <td>24</td>
      <td>Male</td>
      <td>4</td>
      <td>Bloodlord's Fetish</td>
      <td>1.91</td>
      <td>Airi27</td>
    </tr>
    <tr>
      <th>847</th>
      <td>22</td>
      <td>Male</td>
      <td>94</td>
      <td>Mourning Blade</td>
      <td>3.64</td>
      <td>Undilsan50</td>
    </tr>
    <tr>
      <th>848</th>
      <td>21</td>
      <td>Male</td>
      <td>82</td>
      <td>Nirvana</td>
      <td>1.77</td>
      <td>Aidaira26</td>
    </tr>
    <tr>
      <th>849</th>
      <td>34</td>
      <td>Male</td>
      <td>126</td>
      <td>Exiled Mithril Longsword</td>
      <td>1.08</td>
      <td>Chamalo71</td>
    </tr>
    <tr>
      <th>850</th>
      <td>25</td>
      <td>Male</td>
      <td>98</td>
      <td>Deadline, Voice Of Subtlety</td>
      <td>1.29</td>
      <td>Undadar97</td>
    </tr>
    <tr>
      <th>851</th>
      <td>25</td>
      <td>Male</td>
      <td>60</td>
      <td>Wolf</td>
      <td>2.70</td>
      <td>Sundaky74</td>
    </tr>
    <tr>
      <th>852</th>
      <td>21</td>
      <td>Male</td>
      <td>180</td>
      <td>Stormcaller</td>
      <td>2.77</td>
      <td>Lisirra44</td>
    </tr>
    <tr>
      <th>853</th>
      <td>35</td>
      <td>Male</td>
      <td>93</td>
      <td>Apocalyptic Battlescythe</td>
      <td>4.49</td>
      <td>Chamast86</td>
    </tr>
    <tr>
      <th>854</th>
      <td>38</td>
      <td>Male</td>
      <td>163</td>
      <td>Thunderfury Scimitar</td>
      <td>4.16</td>
      <td>Ardcil81</td>
    </tr>
    <tr>
      <th>855</th>
      <td>15</td>
      <td>Male</td>
      <td>167</td>
      <td>Malice, Legacy of the Queen</td>
      <td>3.25</td>
      <td>Heudai45</td>
    </tr>
    <tr>
      <th>856</th>
      <td>24</td>
      <td>Male</td>
      <td>97</td>
      <td>Swan Song, Gouger Of Terror</td>
      <td>1.92</td>
      <td>Chaniman66</td>
    </tr>
    <tr>
      <th>857</th>
      <td>20</td>
      <td>Male</td>
      <td>134</td>
      <td>Undead Crusader</td>
      <td>2.15</td>
      <td>Syalallodil59</td>
    </tr>
  </tbody>
</table>
<p>858 rows × 6 columns</p>
</div>




```python
print('Total Number of Players')
players = purchase_data.shape[0] - 1
# Create df
t_players = [{'Total Players': players}]
total_players = pd.DataFrame(t_players)
total_players
```

    Total Number of Players





<div>
<style>
    .dataframe thead tr:only-child th {
        text-align: right;
    }

    .dataframe thead th {
        text-align: left;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Total Players</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>857</td>
    </tr>
  </tbody>
</table>
</div>




```python
# Purchasing Analysis - Total
print("Purchasing Analysis - Total")

# Number of Unique Items
unique_items = pd_all.Item_ID.nunique()

# Average Purchase Price
average_price = '${:,.2f}'.format(pd_all["Price"].mean())

# Total Number of Purchases
total_purchases = purchase_data.shape[0] - 1

# Total Revenue
total_revenue = '${:,.2f}'.format(pd_all["Price"].sum())

# Create df
pur_analysis = [{'Number of Unique Items': unique_items, 'Average Price': average_price, 'Total Purchases': total_purchases, 'Total Revenue': total_revenue}]
purchase_analysis = pd.DataFrame(pur_analysis)
purchase_analysis
```

    Purchasing Analysis - Total





<div>
<style>
    .dataframe thead tr:only-child th {
        text-align: right;
    }

    .dataframe thead th {
        text-align: left;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Average Price</th>
      <th>Number of Unique Items</th>
      <th>Total Purchases</th>
      <th>Total Revenue</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>$2.93</td>
      <td>184</td>
      <td>857</td>
      <td>$2,514.43</td>
    </tr>
  </tbody>
</table>
</div>




```python
# Gender Demographics
print("Gender Demographics")

# Percentage and Count of Male Players
pd_male = pd_all.loc[pd_all["Gender"] == "Male"]
male_count = pd_male.shape[0] - 1
percentage_male = "{0:.2f}".format((male_count / players) * 100)

# Percentage and Count of Female Players
pd_female = pd_all.loc[pd_all["Gender"] == "Female"]
female_count = pd_female.shape[0] - 1
percentage_female = "{0:.2f}".format(((female_count / players) * 100))

# Percentage and Count of Other / Non-Disclosed
pd_other = pd_all.loc[pd_all["Gender"] == "Other / Non-Disclosed"]
other_count = pd_other.shape[0] - 1
percentage_other = "{0:.2f}".format(((other_count / players) * 100))

# Create df
gender_demo = [{'Gender': 'Male', 'Percentage of Players': percentage_male, 'Total Count': male_count}, 
                {'Gender': 'Female', 'Percentage of Players': percentage_female, 'Total Count': female_count},
              {'Gender': 'Other', 'Percentage of Players': percentage_other, 'Total Count': other_count}]
gender_demographics = pd.DataFrame(gender_demo)
gender_demographics = gender_demographics.set_index('Gender')
gender_demographics
```

    Gender Demographics





<div>
<style>
    .dataframe thead tr:only-child th {
        text-align: right;
    }

    .dataframe thead th {
        text-align: left;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Percentage of Players</th>
      <th>Total Count</th>
    </tr>
    <tr>
      <th>Gender</th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Male</th>
      <td>81.21</td>
      <td>696</td>
    </tr>
    <tr>
      <th>Female</th>
      <td>17.27</td>
      <td>148</td>
    </tr>
    <tr>
      <th>Other</th>
      <td>1.28</td>
      <td>11</td>
    </tr>
  </tbody>
</table>
</div>




```python
# Purchasing Analysis (Gender)
print('Purchasing Analysis (Gender)')

# Purchase Count

# Average Purchase Price
maverage_price = '${:,.2f}'.format(pd_male["Price"].mean())
faverage_price = '${:,.2f}'.format(pd_female["Price"].mean())
oaverage_price = '${:,.2f}'.format(pd_other["Price"].mean())

# Total Purchase Value
mtotal_value = '${:,.2f}'.format(pd_male["Price"].sum())
ftotal_value = '${:,.2f}'.format(pd_female["Price"].sum())
ototal_value = '${:,.2f}'.format(pd_other["Price"].sum())

# Normalized Totals
# cols_to_norm = ['Price']
# pd_male[cols_to_norm] = pd_male.loc[cols_to_norm].apply(lambda x: (x - x.min()) / (x.max() - x.min()))

# Create df
gender_pa = [{'Gender': 'Male', 'Purchase Count': male_count, 'Average Purchase Price': maverage_price, 'Total Purchase Value': mtotal_value, 'Normalized Totals': '?' }, 
                {'Gender': 'Female', 'Purchase Count': female_count, 'Average Purchase Price': faverage_price, 'Total Purchase Value': ftotal_value, 'Normalized Totals': '?' },
              {'Gender': 'Other', 'Purchase Count': other_count, 'Average Purchase Price': oaverage_price, 'Total Purchase Value': ototal_value, 'Normalized Totals': '?' }]
gender_puranalysis = pd.DataFrame(gender_pa)
gender_puranalysis = gender_puranalysis.set_index('Gender')
gender_puranalysis
```

    Purchasing Analysis (Gender)





<div>
<style>
    .dataframe thead tr:only-child th {
        text-align: right;
    }

    .dataframe thead th {
        text-align: left;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Average Purchase Price</th>
      <th>Normalized Totals</th>
      <th>Purchase Count</th>
      <th>Total Purchase Value</th>
    </tr>
    <tr>
      <th>Gender</th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Male</th>
      <td>$0.49</td>
      <td>?</td>
      <td>696</td>
      <td>$340.40</td>
    </tr>
    <tr>
      <th>Female</th>
      <td>$2.85</td>
      <td>?</td>
      <td>148</td>
      <td>$424.29</td>
    </tr>
    <tr>
      <th>Other</th>
      <td>$3.15</td>
      <td>?</td>
      <td>11</td>
      <td>$37.86</td>
    </tr>
  </tbody>
</table>
</div>




```python
# Age Demographics - broken into bins of 4 years (i.e. <10, 10-14, 15-19, etc.)
print('Age Demographics')

# Create the bins in which Data will be held
# Bins are 0 to 9, 10 - 14, 15 - 19, 20 - 24, 25 - 29, 30 - 34, 35 - 39, 40 +
bins = [0, 9, 14, 19, 24, 29, 34, 39, 45]

# Create the names for the four bins
group_names = ['<10', '10 - 14', '15 - 19', '20 - 24', '25 - 29','30 - 34','35 - 39', '40 +']

# Cut Age and place the ages into bins
pd.cut(pd_all["Age"], bins, labels=group_names)

# Add Age Demo to df
pd_all["Age Demo"] = pd.cut(pd_all["Age"], bins, labels=group_names)
pd_all
```

    Age Demographics





<div>
<style>
    .dataframe thead tr:only-child th {
        text-align: right;
    }

    .dataframe thead th {
        text-align: left;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Age</th>
      <th>Gender</th>
      <th>Item_ID</th>
      <th>Item_Name</th>
      <th>Price</th>
      <th>SN</th>
      <th>Age Demo</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>38</td>
      <td>Male</td>
      <td>165</td>
      <td>Bone Crushing Silver Skewer</td>
      <td>3.37</td>
      <td>Aelalis34</td>
      <td>35 - 39</td>
    </tr>
    <tr>
      <th>1</th>
      <td>21</td>
      <td>Male</td>
      <td>119</td>
      <td>Stormbringer, Dark Blade of Ending Misery</td>
      <td>2.32</td>
      <td>Eolo46</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>2</th>
      <td>34</td>
      <td>Male</td>
      <td>174</td>
      <td>Primitive Blade</td>
      <td>2.46</td>
      <td>Assastnya25</td>
      <td>30 - 34</td>
    </tr>
    <tr>
      <th>3</th>
      <td>21</td>
      <td>Male</td>
      <td>92</td>
      <td>Final Critic</td>
      <td>1.36</td>
      <td>Pheusrical25</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>4</th>
      <td>23</td>
      <td>Male</td>
      <td>63</td>
      <td>Stormfury Mace</td>
      <td>1.27</td>
      <td>Aela59</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>5</th>
      <td>20</td>
      <td>Male</td>
      <td>10</td>
      <td>Sleepwalker</td>
      <td>1.73</td>
      <td>Tanimnya91</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>6</th>
      <td>20</td>
      <td>Male</td>
      <td>153</td>
      <td>Mercenary Sabre</td>
      <td>4.57</td>
      <td>Undjaskla97</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>7</th>
      <td>29</td>
      <td>Female</td>
      <td>169</td>
      <td>Interrogator, Blood Blade of the Queen</td>
      <td>3.32</td>
      <td>Iathenudil29</td>
      <td>25 - 29</td>
    </tr>
    <tr>
      <th>8</th>
      <td>25</td>
      <td>Male</td>
      <td>118</td>
      <td>Ghost Reaver, Longsword of Magic</td>
      <td>2.77</td>
      <td>Sondenasta63</td>
      <td>25 - 29</td>
    </tr>
    <tr>
      <th>9</th>
      <td>31</td>
      <td>Male</td>
      <td>99</td>
      <td>Expiration, Warscythe Of Lost Worlds</td>
      <td>4.53</td>
      <td>Hilaerin92</td>
      <td>30 - 34</td>
    </tr>
    <tr>
      <th>10</th>
      <td>24</td>
      <td>Male</td>
      <td>57</td>
      <td>Despair, Favor of Due Diligence</td>
      <td>3.81</td>
      <td>Chamosia29</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>11</th>
      <td>20</td>
      <td>Male</td>
      <td>47</td>
      <td>Alpha, Reach of Ending Hope</td>
      <td>1.55</td>
      <td>Sally64</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>12</th>
      <td>30</td>
      <td>Male</td>
      <td>81</td>
      <td>Dreamkiss</td>
      <td>4.06</td>
      <td>Iskossa88</td>
      <td>30 - 34</td>
    </tr>
    <tr>
      <th>13</th>
      <td>23</td>
      <td>Male</td>
      <td>77</td>
      <td>Piety, Guardian of Riddles</td>
      <td>3.68</td>
      <td>Seorithstilis90</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>14</th>
      <td>40</td>
      <td>Male</td>
      <td>44</td>
      <td>Bonecarvin Battle Axe</td>
      <td>2.46</td>
      <td>Sundast29</td>
      <td>40 +</td>
    </tr>
    <tr>
      <th>15</th>
      <td>21</td>
      <td>Male</td>
      <td>96</td>
      <td>Blood-Forged Skeletal Spine</td>
      <td>4.77</td>
      <td>Haellysu29</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>16</th>
      <td>22</td>
      <td>Female</td>
      <td>123</td>
      <td>Twilight's Carver</td>
      <td>1.14</td>
      <td>Sundista85</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>17</th>
      <td>22</td>
      <td>Female</td>
      <td>59</td>
      <td>Lightning, Etcher of the King</td>
      <td>1.65</td>
      <td>Aenarap34</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>18</th>
      <td>28</td>
      <td>Male</td>
      <td>91</td>
      <td>Celeste</td>
      <td>3.71</td>
      <td>Iskista88</td>
      <td>25 - 29</td>
    </tr>
    <tr>
      <th>19</th>
      <td>31</td>
      <td>Male</td>
      <td>177</td>
      <td>Winterthorn, Defender of Shifting Worlds</td>
      <td>4.89</td>
      <td>Assossa43</td>
      <td>30 - 34</td>
    </tr>
    <tr>
      <th>20</th>
      <td>24</td>
      <td>Male</td>
      <td>78</td>
      <td>Glimmer, Ender of the Moon</td>
      <td>2.33</td>
      <td>Irith83</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>21</th>
      <td>15</td>
      <td>Male</td>
      <td>3</td>
      <td>Phantomlight</td>
      <td>1.79</td>
      <td>Iaralrgue74</td>
      <td>15 - 19</td>
    </tr>
    <tr>
      <th>22</th>
      <td>11</td>
      <td>Female</td>
      <td>11</td>
      <td>Brimstone</td>
      <td>2.52</td>
      <td>Deural48</td>
      <td>10 - 14</td>
    </tr>
    <tr>
      <th>23</th>
      <td>19</td>
      <td>Male</td>
      <td>183</td>
      <td>Dragon's Greatsword</td>
      <td>2.36</td>
      <td>Chanosia65</td>
      <td>15 - 19</td>
    </tr>
    <tr>
      <th>24</th>
      <td>11</td>
      <td>Male</td>
      <td>65</td>
      <td>Conqueror Adamantite Mace</td>
      <td>1.96</td>
      <td>Qarwen67</td>
      <td>10 - 14</td>
    </tr>
    <tr>
      <th>25</th>
      <td>21</td>
      <td>Male</td>
      <td>63</td>
      <td>Stormfury Mace</td>
      <td>1.27</td>
      <td>Idai61</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>26</th>
      <td>29</td>
      <td>Male</td>
      <td>132</td>
      <td>Persuasion</td>
      <td>3.90</td>
      <td>Aerithllora36</td>
      <td>25 - 29</td>
    </tr>
    <tr>
      <th>27</th>
      <td>34</td>
      <td>Male</td>
      <td>106</td>
      <td>Crying Steel Sickle</td>
      <td>2.29</td>
      <td>Assastnya25</td>
      <td>30 - 34</td>
    </tr>
    <tr>
      <th>28</th>
      <td>15</td>
      <td>Male</td>
      <td>49</td>
      <td>The Oculus, Token of Lost Worlds</td>
      <td>4.23</td>
      <td>Ilariarin45</td>
      <td>15 - 19</td>
    </tr>
    <tr>
      <th>29</th>
      <td>16</td>
      <td>Female</td>
      <td>45</td>
      <td>Glinting Glass Edge</td>
      <td>2.46</td>
      <td>Phaedai25</td>
      <td>15 - 19</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>828</th>
      <td>25</td>
      <td>Male</td>
      <td>84</td>
      <td>Arcane Gem</td>
      <td>4.81</td>
      <td>Eusty71</td>
      <td>25 - 29</td>
    </tr>
    <tr>
      <th>829</th>
      <td>20</td>
      <td>Male</td>
      <td>14</td>
      <td>Possessed Core</td>
      <td>2.82</td>
      <td>Frichilsa31</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>830</th>
      <td>23</td>
      <td>Male</td>
      <td>176</td>
      <td>Relentless Iron Skewer</td>
      <td>2.12</td>
      <td>Filon68</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>831</th>
      <td>28</td>
      <td>Male</td>
      <td>1</td>
      <td>Crucifer</td>
      <td>3.67</td>
      <td>Palyon91</td>
      <td>25 - 29</td>
    </tr>
    <tr>
      <th>832</th>
      <td>23</td>
      <td>Female</td>
      <td>118</td>
      <td>Ghost Reaver, Longsword of Magic</td>
      <td>2.95</td>
      <td>Assistast50</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>833</th>
      <td>16</td>
      <td>Female</td>
      <td>94</td>
      <td>Mourning Blade</td>
      <td>3.64</td>
      <td>Seostylis96</td>
      <td>15 - 19</td>
    </tr>
    <tr>
      <th>834</th>
      <td>25</td>
      <td>Male</td>
      <td>111</td>
      <td>Misery's End</td>
      <td>1.79</td>
      <td>Iskadar31</td>
      <td>25 - 29</td>
    </tr>
    <tr>
      <th>835</th>
      <td>20</td>
      <td>Male</td>
      <td>108</td>
      <td>Extraction, Quickblade Of Trembling Hands</td>
      <td>2.26</td>
      <td>Pheodaisun84</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>836</th>
      <td>17</td>
      <td>Male</td>
      <td>79</td>
      <td>Alpha, Oath of Zeal</td>
      <td>1.31</td>
      <td>Yarmol79</td>
      <td>15 - 19</td>
    </tr>
    <tr>
      <th>837</th>
      <td>23</td>
      <td>Female</td>
      <td>107</td>
      <td>Splitter, Foe Of Subtlety</td>
      <td>4.15</td>
      <td>Aeri79</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>838</th>
      <td>30</td>
      <td>Female</td>
      <td>105</td>
      <td>Hailstorm Shadowsteel Scythe</td>
      <td>1.02</td>
      <td>Undosian34</td>
      <td>30 - 34</td>
    </tr>
    <tr>
      <th>839</th>
      <td>39</td>
      <td>Female</td>
      <td>2</td>
      <td>Verdict</td>
      <td>2.65</td>
      <td>Aesririam61</td>
      <td>35 - 39</td>
    </tr>
    <tr>
      <th>840</th>
      <td>23</td>
      <td>Female</td>
      <td>68</td>
      <td>Storm-Weaver, Slayer of Inception</td>
      <td>4.39</td>
      <td>Firon67</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>841</th>
      <td>21</td>
      <td>Male</td>
      <td>31</td>
      <td>Trickster</td>
      <td>4.59</td>
      <td>Jiskjask76</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>842</th>
      <td>18</td>
      <td>Male</td>
      <td>25</td>
      <td>Hero Cane</td>
      <td>4.78</td>
      <td>Chanirra64</td>
      <td>15 - 19</td>
    </tr>
    <tr>
      <th>843</th>
      <td>11</td>
      <td>Female</td>
      <td>41</td>
      <td>Orbit</td>
      <td>3.85</td>
      <td>Isristira52</td>
      <td>10 - 14</td>
    </tr>
    <tr>
      <th>844</th>
      <td>24</td>
      <td>Male</td>
      <td>164</td>
      <td>Exiled Doomblade</td>
      <td>1.31</td>
      <td>Chaniman66</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>845</th>
      <td>23</td>
      <td>Male</td>
      <td>181</td>
      <td>Reaper's Toll</td>
      <td>4.12</td>
      <td>Yarithrgue83</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>846</th>
      <td>24</td>
      <td>Male</td>
      <td>4</td>
      <td>Bloodlord's Fetish</td>
      <td>1.91</td>
      <td>Airi27</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>847</th>
      <td>22</td>
      <td>Male</td>
      <td>94</td>
      <td>Mourning Blade</td>
      <td>3.64</td>
      <td>Undilsan50</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>848</th>
      <td>21</td>
      <td>Male</td>
      <td>82</td>
      <td>Nirvana</td>
      <td>1.77</td>
      <td>Aidaira26</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>849</th>
      <td>34</td>
      <td>Male</td>
      <td>126</td>
      <td>Exiled Mithril Longsword</td>
      <td>1.08</td>
      <td>Chamalo71</td>
      <td>30 - 34</td>
    </tr>
    <tr>
      <th>850</th>
      <td>25</td>
      <td>Male</td>
      <td>98</td>
      <td>Deadline, Voice Of Subtlety</td>
      <td>1.29</td>
      <td>Undadar97</td>
      <td>25 - 29</td>
    </tr>
    <tr>
      <th>851</th>
      <td>25</td>
      <td>Male</td>
      <td>60</td>
      <td>Wolf</td>
      <td>2.70</td>
      <td>Sundaky74</td>
      <td>25 - 29</td>
    </tr>
    <tr>
      <th>852</th>
      <td>21</td>
      <td>Male</td>
      <td>180</td>
      <td>Stormcaller</td>
      <td>2.77</td>
      <td>Lisirra44</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>853</th>
      <td>35</td>
      <td>Male</td>
      <td>93</td>
      <td>Apocalyptic Battlescythe</td>
      <td>4.49</td>
      <td>Chamast86</td>
      <td>35 - 39</td>
    </tr>
    <tr>
      <th>854</th>
      <td>38</td>
      <td>Male</td>
      <td>163</td>
      <td>Thunderfury Scimitar</td>
      <td>4.16</td>
      <td>Ardcil81</td>
      <td>35 - 39</td>
    </tr>
    <tr>
      <th>855</th>
      <td>15</td>
      <td>Male</td>
      <td>167</td>
      <td>Malice, Legacy of the Queen</td>
      <td>3.25</td>
      <td>Heudai45</td>
      <td>15 - 19</td>
    </tr>
    <tr>
      <th>856</th>
      <td>24</td>
      <td>Male</td>
      <td>97</td>
      <td>Swan Song, Gouger Of Terror</td>
      <td>1.92</td>
      <td>Chaniman66</td>
      <td>20 - 24</td>
    </tr>
    <tr>
      <th>857</th>
      <td>20</td>
      <td>Male</td>
      <td>134</td>
      <td>Undead Crusader</td>
      <td>2.15</td>
      <td>Syalallodil59</td>
      <td>20 - 24</td>
    </tr>
  </tbody>
</table>
<p>858 rows × 7 columns</p>
</div>




```python
# Groupby Age Demo
pd_groups = pd_all.groupby("Age Demo")

# Purchase Count
purchase_count = pd_groups.count()

# Average Purchase Price
avg_price = pd_groups['Price'].mean()
avg_price

# Total Purchase Value
sum_price = pd_groups['Price'].sum()
sum_price

# Normalized Totals

# Create df
ad_pa = [{'Age Demo': '<10', 'Purchase Count': purchase_count, 'Average Purchase Price': avg_price, 'Total Purchase Value': sum_price, 'Normalized Totals': '?' }, 
             {'Age Demo': '10 - 14', 'Purchase Count': purchase_count, 'Average Purchase Price': avg_price, 'Total Purchase Value': sum_price, 'Normalized Totals': '?' },
             {'Age Demo': '15 - 19', 'Purchase Count': purchase_count, 'Average Purchase Price': avg_price, 'Total Purchase Value': sum_price, 'Normalized Totals': '?' },
             {'Age Demo': '20 - 24', 'Purchase Count': purchase_count, 'Average Purchase Price': avg_price, 'Total Purchase Value': sum_price, 'Normalized Totals': '?' },
             {'Age Demo': '25 - 29', 'Purchase Count': purchase_count, 'Average Purchase Price': avg_price, 'Total Purchase Value': sum_price, 'Normalized Totals': '?' },
             {'Age Demo': '30 - 34', 'Purchase Count': purchase_count, 'Average Purchase Price': avg_price, 'Total Purchase Value': sum_price, 'Normalized Totals': '?' },
             {'Age Demo': '35 - 39', 'Purchase Count': purchase_count, 'Average Purchase Price': avg_price, 'Total Purchase Value': sum_price, 'Normalized Totals': '?' },
             {'Age Demo': '40 +','Purchase Count': purchase_count, 'Average Purchase Price': avg_price, 'Total Purchase Value': sum_price, 'Normalized Totals': '?' }]
age_puranalysis = pd.DataFrame(ad_pa)
age_puranalysis = age_puranalysis.set_index('Age Demo')
age_puranalysis
```




<div>
<style>
    .dataframe thead tr:only-child th {
        text-align: right;
    }

    .dataframe thead th {
        text-align: left;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Average Purchase Price</th>
      <th>Normalized Totals</th>
      <th>Purchase Count</th>
      <th>Total Purchase Value</th>
    </tr>
    <tr>
      <th>Age Demo</th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>&lt;10</th>
      <td>Age Demo
&lt;10        2.947879
10 - 14    2.7871...</td>
      <td>?</td>
      <td>Age  Gender  Item_ID  Item_Name  Pri...</td>
      <td>Age Demo
&lt;10          97.28
10 - 14     105.91...</td>
    </tr>
    <tr>
      <th>10 - 14</th>
      <td>Age Demo
&lt;10        2.947879
10 - 14    2.7871...</td>
      <td>?</td>
      <td>Age  Gender  Item_ID  Item_Name  Pri...</td>
      <td>Age Demo
&lt;10          97.28
10 - 14     105.91...</td>
    </tr>
    <tr>
      <th>15 - 19</th>
      <td>Age Demo
&lt;10        2.947879
10 - 14    2.7871...</td>
      <td>?</td>
      <td>Age  Gender  Item_ID  Item_Name  Pri...</td>
      <td>Age Demo
&lt;10          97.28
10 - 14     105.91...</td>
    </tr>
    <tr>
      <th>20 - 24</th>
      <td>Age Demo
&lt;10        2.947879
10 - 14    2.7871...</td>
      <td>?</td>
      <td>Age  Gender  Item_ID  Item_Name  Pri...</td>
      <td>Age Demo
&lt;10          97.28
10 - 14     105.91...</td>
    </tr>
    <tr>
      <th>25 - 29</th>
      <td>Age Demo
&lt;10        2.947879
10 - 14    2.7871...</td>
      <td>?</td>
      <td>Age  Gender  Item_ID  Item_Name  Pri...</td>
      <td>Age Demo
&lt;10          97.28
10 - 14     105.91...</td>
    </tr>
    <tr>
      <th>30 - 34</th>
      <td>Age Demo
&lt;10        2.947879
10 - 14    2.7871...</td>
      <td>?</td>
      <td>Age  Gender  Item_ID  Item_Name  Pri...</td>
      <td>Age Demo
&lt;10          97.28
10 - 14     105.91...</td>
    </tr>
    <tr>
      <th>35 - 39</th>
      <td>Age Demo
&lt;10        2.947879
10 - 14    2.7871...</td>
      <td>?</td>
      <td>Age  Gender  Item_ID  Item_Name  Pri...</td>
      <td>Age Demo
&lt;10          97.28
10 - 14     105.91...</td>
    </tr>
    <tr>
      <th>40 +</th>
      <td>Age Demo
&lt;10        2.947879
10 - 14    2.7871...</td>
      <td>?</td>
      <td>Age  Gender  Item_ID  Item_Name  Pri...</td>
      <td>Age Demo
&lt;10          97.28
10 - 14     105.91...</td>
    </tr>
  </tbody>
</table>
</div>


