import React from 'react';

function Popup() {
  const handleTestClick = () => {
    alert('Nano Tutor extension is working! 🎉');
  };

  return (
    <div className="popup">
      <h3>Nano Tutor</h3>
      <button onClick={handleTestClick} className="test-button">
        Test Extension
      </button>
    </div>
  );
}

export default Popup;
