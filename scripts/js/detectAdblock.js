/**
 * Detect if client's using adblock.
 *
 * 1. Create element that looks like ad with some guaranteed size (&nbsp;)
 * 3. Append to DOM
 * 4. If element's size is 0, blame adblock
 */
function detectAdblock() {
  const adMock = document.createElement('div')
  adMock.innerHTML = '&nbsp;'
  adMock.className = 'ad ads adsbox adsbygoogle prebid'
  adMock.style.position = 'absolute'
  adMock.style.top = '-20px'
  adMock.style.left = '-20px'

  document.body.appendChild(adMock)

  const adblockDetected = adMock.offsetHeight === 0
  
  document.body.removeChild(adMock)

  return adblockDetected
}
