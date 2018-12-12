import * as React from "react";
import { Header } from "app/components/Header";
import { Footer } from "app/components/Footer";

export class App extends React.Component<{}> {
  // tslint:disable-next-line:member-ordering
  constructor(props: {}) {
    super(props);
  }

  public render(): JSX.Element {
    return (
      <>
        <Header title={"Giled Rose"} handleLogin={this.showLoginModal} isAuthenticated={false} />
        <div>
          <div>
            Welcome to the Gilded Rose Inventory Application.
          </div>
        </div>
        <Footer language={"© Copyright 2018 GildedRose LLC"} />
      </>
    );
  }

  private showLoginModal = () => {
    alert("hello");
  }
}
