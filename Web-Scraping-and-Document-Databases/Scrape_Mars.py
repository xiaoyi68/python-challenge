#!/usr/bin/env python
# coding: utf-8

# In[1]:


# Import BeautifulSoup
from bs4 import BeautifulSoup


# In[2]:


# Import Splinter and set the chromedriver path
from splinter import Browser
executable_path = {"executable_path": "/usr/local/bin/chromedriver"}
browser = Browser("chrome", **executable_path, headless=False)


# In[3]:


# Visit the following URL
url = "https://en.wikipedia.org/wiki/Mars"
browser.visit(url)


# In[4]:


# Design an XPATH selector to grab the "Mars in natural color in 2007" image on the right
xpath = '//td//a[@class="image"]/img'


# In[5]:


# Use splinter to Click the "Mars in natural color in 2007" image 
# to bring up the full resolution image
results = browser.find_by_xpath(xpath)
img = results[0]
img.click()


# In[6]:


# Scrape the browser into soup and use soup to find the full resolution image of mars
# Save the image url to a variable called `img_url`
html = browser.html
soup = BeautifulSoup(html, 'html.parser')
img_url = soup.find("img", class_="jpg")["src"]
img_url


# In[7]:


# BONUS

# Use the requests library to download and save the image from the `img_url` above
import requests
import shutil
response = requests.get(img_url, stream=True)
with open('img.png', 'wb') as out_file:
    shutil.copyfileobj(response.raw, out_file)


# In[8]:


# Display the image with IPython.display
from IPython.display import Image
Image(url='img.png')


# In[ ]:




