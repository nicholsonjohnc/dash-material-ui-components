import React, {Component} from 'react';
import PropTypes from 'prop-types';
import {default as MUIButton} from '@material-ui/core/Button';

/**
 * Button wraps Material-UI Button.
 * 
 * Use the `n_clicks` prop to trigger callbacks when the button has been clicked.
 */
export default class Button extends Component {
  render() {
    const {id, text, variant, color, href, disableElevation, disabled, n_clicks, setProps} = this.props;

    setProps({n_clicks: n_clicks});

    return (
      <MUIButton 
        id={id} 
        variant={variant} 
        color={color} 
        href={href} 
        disableElevation={disableElevation} 
        disabled={disabled}
        onClick={e => setProps({
          n_clicks: n_clicks + 1
        })}
      >
        {text}
      </MUIButton>
    );
  }
}

Button.defaultProps = {
  n_clicks: 0
};

Button.propTypes = {
  /**
   * The ID used to identify this component in Dash callbacks.
   */
  id: PropTypes.string,

  /**
   * Button text.
   */
  text: PropTypes.string.isRequired,

  /**
   * Material-UI Button variant prop.
   */
  variant: PropTypes.string,

  /**
   * Material-UI Button color prop.
   */
  color: PropTypes.string,

  /**
   * Material-UI Button href prop.
   */
  href: PropTypes.string,

  /**
   * Material-UI Button disableElevation prop.
   */
  disableElevation: PropTypes.bool,

  /**
   * Material-UI Button disabled prop.
   */
  disabled: PropTypes.bool,

  /**
   * An integer that represents the number of times that this element has been clicked on.
   */
  n_clicks: PropTypes.number,

  /**
   * Dash-assigned callback that should be called to report property changes to Dash, to make them available for callbacks.
   */
  setProps: PropTypes.func
};
