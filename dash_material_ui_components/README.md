# Dash Material-UI Components

Dash component library wrapping Material-UI React component library.

## Contributing

---

### Create and activate Anaconda3 virtual environment.

```
conda create -n dash-dev python=3.8.3
```

```
conda activate dash-dev
```

---

### Install dash and test app.

```
pip install dash==1.16.0
```

From `dash-material-ui-components` directory:

```
cd dash_material_ui_components
```

```
python usage.py
```

Visit [http://localhost:8050](http://localhost:8050) in your web browser. You should see some components!

Press `ctrl+c` to kill the server.

---

### Install dependencies.

From `dash_material_ui_components` directory (requires [Node.js and npm](https://nodejs.org/en/download/)):

```
npm install
```

```
pip install -r requirements.txt
```

```
pip install -r tests/requirements.txt
```

Be sure to resolve any dependency conflicts!

---

### Getting ready to create your component

- Create a feature branch: [Git Feature Branch Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)
    - Checkout a new branch: `git checkout -b button-feature master`
- Learn some React (see "Quick intro to React", "Our very own React component
", and "Using your React components in Dash" sections for step-by-step instructions): [React for Python Developers: a primer](https://dash.plotly.com/react-for-python-developers)

---

### Create your component

- Write your component code in `src/lib/components/DashMaterialUiComponents.react.js`.
- The demo app is in `src/demo/App.js` and you will import your example component code into your demo app.
- Test your code in a Python environment:
    1. Build your code
        ```
        $ npm run build
        ```
    2. Run and modify the `usage.py` sample dash app:
        ```
        $ python usage.py
        ```
- Write tests for your component.
    - A sample test is available in `tests/test_usage.py`, it will load `usage.py` and you can then automate interactions with selenium.
    - Run the tests with `$ pytest tests`.
    - The Dash team uses these types of integration tests extensively. Browse the Dash component code on GitHub for more examples of testing (e.g. https://github.com/plotly/dash-core-components)
- Add custom styles to your component by putting your custom CSS files into your distribution folder (`dash_material_ui_components`).
    - Make sure that they are referenced in `MANIFEST.in` so that they get properly included when you're ready to publish your component.
    - Make sure the stylesheets are added to the `_css_dist` dict in `dash_material_ui_components/__init__.py` so dash will serve them automatically when the component suite is requested.
- [Review your code](./review_checklist.md)

---

### Create a production build and publish (only if you've done this kind of thing before!).

1. Build your code:
    ```
    $ npm run build
    ```
2. Create a Python tarball
    ```
    $ python setup.py sdist
    ```
    This distribution tarball will get generated in the `dist/` folder

3. Test your tarball by copying it into a new environment and installing it locally:
    ```
    $ pip install dash_material_ui_components-0.0.1.tar.gz
    ```

4. If it works, then you can publish the component to NPM and PyPI:
    1. Publish on PyPI
        ```
        $ twine upload dist/*
        ```
    2. Cleanup the dist folder (optional)
        ```
        $ rm -rf dist
        ```
    3. Publish on NPM (Optional if chosen False in `publish_on_npm`)
        ```
        $ npm publish
        ```
        _Publishing your component to NPM will make the JavaScript bundles available on the unpkg CDN. By default, Dash serves the component library's CSS and JS locally, but if you choose to publish the package to NPM you can set `serve_locally` to `False` and you may see faster load times._

5. Share your component with the community! https://community.plotly.com/c/dash
    1. Publish this repository to GitHub
    2. Tag your GitHub repository with the plotly-dash tag so that it appears here: https://github.com/topics/plotly-dash
    3. Create a post in the Dash community forum: https://community.plotly.com/c/dash
