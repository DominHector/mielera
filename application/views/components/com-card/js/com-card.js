class ComCard extends HTMLElement {
    constructor() {
        super();
    }

    connectedCallback() {
        console.log(this);
    }
}