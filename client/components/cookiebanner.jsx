import React, { useState } from 'react';
const CookieBanner = () => {
    const [showBanner, setShowBanner] = useState(true);
  
    const acceptCookies = () => {
      setShowBanner(false);
    };
  
    const rejectCookies = () => {
      setShowBanner(false);
    };
  
    
    return (
      <div className={`cookie-banner ${showBanner ? 'show' : 'hide'}`}>
        <p>This website uses cookies to improve your experience &#10084;&#65039;</p>
        <div>
            <button onClick={acceptCookies} className='allow'>Accept</button>
            <button onClick={rejectCookies} className='reject'>Reject</button>
        </div>
      </div>
    );
  };
  
  export default CookieBanner;