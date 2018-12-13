import * as React from "react";
import { Header } from "app/components/Header";
import { Footer } from "app/components/Footer";
import { RootState } from "app/reducers";
import { connect } from "react-redux";

export namespace App {
  export interface FluxProps {
    AuthenticationState: RootState.AuthenticationState;
  }
}

@connect(
  (state: RootState, ownProps): Pick<App.FluxProps, "AuthenticationState"> => {
    return { AuthenticationState: state.authenticationData };
  },
)

export class App extends React.Component<App.FluxProps> {
  // tslint:disable-next-line:member-ordering
  constructor(props: App.FluxProps) {
    super(props);
  }

  public render(): JSX.Element {
    const containerStyle = {
      paddingTop: "80px",
    } as React.CSSProperties;
    const articleStyle = {
      textAlign: "center",
    } as React.CSSProperties;

    return (
      <>
        <Header title={"GildedRose"} isAuthenticated={this.props.AuthenticationState.isAuthenticated} />
        <div style={containerStyle}>
          {!this.props.AuthenticationState.isAuthenticated &&
            <article style={articleStyle}>
              Welcome to the Gilded Rose Inventory Application. Please login or create an account.
          </article>}
          {this.props.AuthenticationState.isAuthenticated &&
            <article style={articleStyle}>
              Welcome to the Gilded Rose Inventory Application. Please choose an option no the navigation bar.
          </article>}
        </div>
        <Footer language={"© Copyright 2018 GildedRose LLC"} />
      </>
    );
  }
}
