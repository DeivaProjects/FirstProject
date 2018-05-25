# https://octopus.com/docs/getting-started
# Demo https://demo.octopus.com/

<main>
<header class="stripe stripe-blue stripe-narrow">
<div class="container">
<div class="row">
<div class="col-sm-9">
<div class="like-h2"><h1>Octopus Deploy Documentation</h1></div>
</div>
<div class="col-sm-3">
<div class="text-right">
<form method="get" action="/docs/search">
<div class="visible-xs">&nbsp;</div>
<div class="form-search search-only">
<i class="search-icon fa fa-search"></i>
<input class="form-control search-query" id="q" name="q" placeholder="Search" style="width: 100%; text-overflow: ellipsis;" type="text" value="">
</div>
</form>
</div>
</div>
</div>
</div>
</header>
<section class="stripe stripe-gray docs">
<div class="container">
<div class="row">
<div class="col-sm-9 col-sm-push-3">
<article id="doc-content" class="paper" style="padding-bottom: 100px; min-height: 1000px;">
<header>
<h1>Getting Started</h1>
<div style="margin: 10px 0; color: #aaa" class="small">Last updated <time datetime="2018-05-21T01:21:27.1667544+00:00">4 days ago</time></div>
</header>
<p>Welcome!</p>
<p>This section provides an overview of Octopus Deploy by explaining how Octopus Deploy fits into your application delivery pipeline. It provides an overview of the major concepts in Octopus and links to the relevant documentation, which explore the concepts further to guide you through implementing them with your own Octopus.</p>
<h2 id="octopus-in-your-delivery-process"><a class="anchorjs-link " href="#octopus-in-your-delivery-process" aria-label="Anchor link for: octopus in your delivery process" data-anchorjs-icon="" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 1em; line-height: inherit; font-family: anchorjs-icons; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Octopus in Your Delivery Process</h2>
<p>Octopus Deploy is an automated deployment server that makes it easy to automate the deployment of ASP.NET web applications, Java applications, database updates, NodeJS application, and custom scripts into development, test, and production environments.</p>
<h3 id="the-delivery-pipeline"><a class="anchorjs-link " href="#the-delivery-pipeline" aria-label="Anchor link for: the delivery pipeline" data-anchorjs-icon="" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 1em; line-height: inherit; font-family: anchorjs-icons; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>The Delivery Pipeline</h3>
<p>We designed Octopus Deploy for teams that follow agile delivery practices. A typical workflow would be:</p>
<ol>
<li><p><strong>Commit Code to Your Existing Source Control System.</strong></p>
<p>You might be using Git, Team Foundation Server, Subversion, or Mercurial; the choice is yours.</p>
</li>
<li><p><strong>Your CI/Build Server Compiles the Code and Runs Unit Tests.</strong></p>
<p>You might be using TeamCity, Jenkins, Bamboo, Team Foundation Server, or CruiseControl.NET, again, the choice is yours.</p>
</li>
<li><p><strong>Package Your Application.</strong></p>
<p>When the build is ready, your CI/build server bundles all of the files your software needs to run into a supported package.</p>
</li>
<li><p><strong>Octopus Deploy Pushes Your Packaged Application.</strong></p>
<p>Octopus deploys your applications to the environments you've configured. These could be testing, dev, or production environments.</p>
</li>
</ol>
<h3 id="consistent-releases"><a class="anchorjs-link " href="#consistent-releases" aria-label="Anchor link for: consistent releases" data-anchorjs-icon="" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 1em; line-height: inherit; font-family: anchorjs-icons; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Consistent Releases</h3>
<p>As an Octopus user, you define the process for deploying the software. You specify the environments the applications are deployed to and who on your team can deploy to which environments; for instance, you might want testers to deploy to test environments, but not to production. Taking this approach means that even if different members of the team trigger deployments, the deployment process remains consistent.</p>
<p>The rest of this guide goes into more detail about working with Octopus Deploy and links to the relevant sections of the documentation for more information.</p>
<h2 id="install-octopus-deploy"><a class="anchorjs-link " href="#install-octopus-deploy" aria-label="Anchor link for: install octopus deploy" data-anchorjs-icon="" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 1em; line-height: inherit; font-family: anchorjs-icons; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Install Octopus Deploy</h2>
<p>Installing <a href="/docs/installation">Octopus Deploy</a> sets up the central <a href="/docs/installation">Octopus Deploy Server</a>, which provides the <a href="/docs/api-and-integration/api">Octopus REST API</a> and the <strong>Octopus Web Portal</strong> which you will use you manage your deployments.</p>
<p>The <a href="/docs/installation">installation documentation</a> provides instructions for installing and configuring your Octopus Deploy server.</p>
<h3 id="access-the-octopus-web-portal"><a class="anchorjs-link " href="#access-the-octopus-web-portal" aria-label="Anchor link for: access the octopus web portal" data-anchorjs-icon="" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 1em; line-height: inherit; font-family: anchorjs-icons; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Access the Octopus Web Portal</h3>
<p>Once Octopus is installed you can access the <strong>Octopus Web Portal</strong>. This is where you'll manage your infrastructure, projects, access the built-in repository, and deploy your applications from.</p>
<p><a href="#" data-featherlight="https://i.octopus.com/docs/octopus-dashboard.png" class="zoom" data-title=""><img src="https://i.octopus.com/docs/octopus-dashboard.png" class="img-fluid center" height="auto" width="500" alt="Octopus Dashboard"></a></p>
<h2 id="infrastructure"><a class="anchorjs-link " href="#infrastructure" aria-label="Anchor link for: infrastructure" data-anchorjs-icon="" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 1em; line-height: inherit; font-family: anchorjs-icons; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Infrastructure</h2>
<p>Octopus Deploy organizes your infrastructure (the machines and services you deploy software to) into groups called environments. Typical examples of environments are <strong>Development</strong>, <strong>Test</strong>, and <strong>Production</strong>.</p>
<p>With Octopus you can deploy software to Windows servers, Linux servers, Microsoft Azure, AWS, cloud regions, or even an offline package drop.</p>
<p>Organizing your infrastructure into environments lets you define your deployment processes (no matter how many deployment targets are involved) and have Octopus deploy the right versions of your software to the right environments at the right time.</p>
<p>Learn more about managing your <a href="/docs/infrastructure">infrastructure</a>.</p>
<h2 id="packaging-applications"><a class="anchorjs-link " href="#packaging-applications" aria-label="Anchor link for: packaging applications" data-anchorjs-icon="" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 1em; line-height: inherit; font-family: anchorjs-icons; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Packaging Applications</h2>
<p>Before you can deploy software with Octopus Deploy, you need to bundle all the files needed for the software to run into a supported package. The package must be versioned and stored in a repository. Octopus Deploy includes a built-in repository. We recommend configuring your existing tool chain to push packages automatically to the built-in repository; however, you can push packages manually to the repository if you choose to.</p>
<p>Learn more about <a href="/docs/packaging-applications">packaging your applications</a> or how to automate your existing tool chain to push packages to your Octopus Deploy server with our <a href="/docs/api-and-integration">API and Integrations</a>.</p>
<h2 id="deploying-applications"><a class="anchorjs-link " href="#deploying-applications" aria-label="Anchor link for: deploying applications" data-anchorjs-icon="" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 1em; line-height: inherit; font-family: anchorjs-icons; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Deploying Applications</h2>
<p>Octopus Deploy is designed to work with teams following agile software development methodologies, that is, continuously deploying software to environments, getting feedback, making changes, and redeploying.</p>
<p>The deployment process that Octopus executes is like a recipe for deploying your software. You define the recipe by adding steps and variables to a project. Octopus Deploy provides a range of steps that can be included in your deployment processes, you can add steps from the community step library, and even define your own steps. Each step contains a specific action (or set of actions) that is executed as part of the deployment process each time your software is deployed. After the initial setup, your deployment process shouldn't change between deployments even though the software being deployed will change as part of the development process.</p>
<p>Learn more about the <a href="/docs/deployment-process">deployment process</a> and <a href="/docs/deploying-applications">deploying applications</a>.</p>
<h3 id="variables"><a class="anchorjs-link " href="#variables" aria-label="Anchor link for: variables" data-anchorjs-icon="" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 1em; line-height: inherit; font-family: anchorjs-icons; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Variables</h3>
<p>As you deploy your applications between different environments, you'll need to change their configuration files based on the scope of the deployment. Octopus has advance support for managing and scoping variables.</p>
<p>Learn more about&nbsp;<a href="/docs/deployment-process/variables">variables</a>.</p>
<h3 id="releases"><a class="anchorjs-link " href="#releases" aria-label="Anchor link for: releases" data-anchorjs-icon="" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 1em; line-height: inherit; font-family: anchorjs-icons; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Releases</h3>
<p>A release in Octopus, is a snapshot of the packaged software, variables, and the deployment process.</p>
<p>A release is deployed to the environments defined in the deployment process. Typically, releases are deployed to one environment and then promoted to the next environment when they are successful.</p>
<p>Each time you have a new candidate build that is ready to test, you'll create a release. When you apply a release to an environment, that is referred to as a deployment.</p>
<h3 id="projects"><a class="anchorjs-link " href="#projects" aria-label="Anchor link for: projects" data-anchorjs-icon="" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 1em; line-height: inherit; font-family: anchorjs-icons; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Projects</h3>
<p>Octopus Deploy can manage the deployment of many applications across your organization. Projects within Octopus Deploy let you manage multiple software projects across different environments with deployment processes (the specific deployment steps) defined per project.</p>
<p>A project in Octopus can consist of many deliverable components (e.g., web sites, micro services, and database scripts). It's usually helpful to think of Octopus projects in terms of business projects: if you have 5 developers working together on the "HR Portal rewrite" project, then that's probably a single project in Octopus.</p>
<p>Learn more about <a href="/docs/deployment-process/projects">projects</a>.</p>
<h3 id="lifecycle"><a class="anchorjs-link " href="#lifecycle" aria-label="Anchor link for: lifecycle" data-anchorjs-icon="" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 1em; line-height: inherit; font-family: anchorjs-icons; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Lifecycle</h3>
<p>When you define a project, you also select a lifecycle. The lifecycle defines the rules around how releases of the project are deployed between environments.</p>
<p>Lifecycles are defined by phases, each phase can have one or more environments, and each environment can be defined as an automatic deployment environment or a manual deployment environment. Each phase can have a set number of environments that must be released to before the next phase is available for deployment.</p>
<p>Learn more about <a href="/docs/deployment-process/lifecycles">lifecycles</a>.</p>
<h2 id="channels"><a class="anchorjs-link " href="#channels" aria-label="Anchor link for: channels" data-anchorjs-icon="" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 1em; line-height: inherit; font-family: anchorjs-icons; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Channels</h2>
<p>When you start working with Octopus, you will typically create releases from your main source code branch that are considered to be release candidates for your final production environment. Over time you may find you want to start working on an experimental branch of code, perhaps to introduce a new feature, or an entirely new version of your software. In this case you can either create an entirely new project, or clone the existing project, to manage deployments of this experimental software - but that leads to a lot of possible duplication and rework. In Octopus 3.2 we introduced the concept of&nbsp;<a href="/docs/deployment-process/channels">channels</a> which let you modify the entire deployment process on a per-release basis, all within the same project. For example, you can promote releases created from your main code branch through to your production environment, but restrict releases created from your experimental feature branch to a special test environment perhaps with extra steps and variables.</p>
<p>Learn more about <a href="/docs/deployment-process/channels">channels</a>.</p>
<h2 id="tenants"><a class="anchorjs-link " href="#tenants" aria-label="Anchor link for: tenants" data-anchorjs-icon="" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 1em; line-height: inherit; font-family: anchorjs-icons; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Tenants</h2>
<p>Over time your software may become so successful that you on-sell it to some external customers, and due to the way the software is architected, you need to deploy a copy of the software once per customer. You could achieve this in Octopus by creating an environment-per-customer, or even a project-per-customer, but this leads to duplication and unnecessary complexity. In Octopus 3.4 we introduced the concept of tenants that you can manage alongside your existing projects and environments.</p>
<p>Learn more about tenants in our <a href="/docs/deployment-patterns/multi-tenant-deployments">Multi-tenant Deployments Guide</a>.</p>
<p>If you'd like to take a closer look at working instance of Octopus Deploy, you can visit our <a href="https://demo.octopus.com" rel="nofollow">Demo Site</a>.</p>
<aside id="docs-feedback" class="" style="">
<div class="text-center initial-view">
<p style="font-size: 12pt">
Was this page helpful?
</p>
<p>
<button class="btn btn-default btn-lg yes">
Yes thanks!
</button>
<button class="btn btn-default btn-lg no">
Not really
</button>
</p>
</div>
<div class="yes-view" style="display: none;">
<p>That's great!</p>
<p>Is there anything we can do to improve it?</p>
<p><a href="" class="suggestion">Now that you mention it...</a></p>
</div>
<div class="feedback-view" style="display: none;">
<p class="feedback-intro">We're sorry this page did not help you! <br>How can we improve it?</p>
<textarea class="form-control feedback-textbox" placeholder="Please share your ideas here..." style="min-width: 300px; min-height: 150px"></textarea>
<p><button class="btn btn-success btn-lg send">Send</button></p>
</div>
<div class="confirmation-view" style="display: none;">
<p>Thanks so much for taking the time to give us feedback!</p>
</div>
</aside>
</article>
</div>
<div class="col-sm-3 col-sm-pull-9" style="padding-bottom: 100px;">
<aside class="documentation">
<div class="sidebar">
<ul>
<li class="active expanded ">
<a href="/docs/getting-started">
Getting Started
</a>
</li>
<li class="  has-children">
<a href="/docs/installation">
Installation
</a>
</li>
<li class="  has-children">
<a href="/docs/infrastructure">
Infrastructure
</a>
</li>
<li class="  has-children">
<a href="/docs/packaging-applications">
Packaging Applications
</a>
</li>
<li class="  has-children">
<a href="/docs/deployment-process">
Deployment Process
</a>
</li>
<li class="  has-children">
<a href="/docs/deploying-applications">
Deploying Applications
</a>
</li>
<li class="  has-children">
<a href="/docs/deployment-patterns">
Deployment Patterns
</a>
</li>
<li class="  has-children">
<a href="/docs/api-and-integration">
API and Integrations
</a>
</li>
 <li class="  has-children">
<a href="/docs/administration">
Administration
</a>
</li>
<li class="  has-children">
<a href="/docs/support">
Support
</a>
</li>
<li class="  ">
<a href="/docs/credits">
Credits
</a>
</li>
</ul>
</div>
</aside>
<div>
</div>
</div>
</div>
</div>
</section>
</main>
