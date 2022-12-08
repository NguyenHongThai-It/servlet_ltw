<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 12/3/2022
  Time: 11:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>

    <!-- FONT AWESOME -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
          integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <!-- BOOTSTRAP -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>

    <!-- CUSTOM -->
    <script src="./asset/js/dashboard-product.js"></script>
    <link rel="stylesheet" href="./asset//scss//css//dashboard-product.css"/>
</head>

<body>
<!-- Edit Form -->
<jsp:include page="include/dashboard/form.jsp"></jsp:include>
<!-- Banner -->
<a href="https://webpixels.io/components?ref=bbbootstrap"
   class="btn w-full btn-primary text-truncate rounded-0 py-2 border-0 position-relative" style="z-index: 1000">
    <strong>Crafted with Webpixels CSS:</strong> The design system for
    Bootstrap 5. Browse all components &rarr;
</a>
<!-- Dashboard -->
<div class="d-flex flex-column flex-lg-row h-lg-full bg-surface-secondary">
    <!-- Vertical Navbar -->
    <nav
            class="navbar show navbar-vertical h-lg-screen navbar-expand-lg px-0 py-3 navbar-light bg-white border-bottom border-bottom-lg-0 border-end-lg"
            id="navbarVertical">
        <div class="container-fluid">
            <!-- Toggler -->
            <button class="navbar-toggler ms-n2" type="button" data-bs-toggle="collapse"
                    data-bs-target="#sidebarCollapse"
                    aria-controls="sidebarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Brand -->
            <a class="navbar-brand py-lg-2 mb-lg-5 px-lg-6 me-0" href="#">
                <img src="https://preview.webpixels.io/web/img/logos/clever-primary.svg" alt="..."/>
            </a>
            <!-- User menu (mobile) -->
            <div class="navbar-user d-lg-none">
                <!-- Dropdown -->
                <div class="dropdown">
                    <!-- Toggle -->
                    <a href="#" id="sidebarAvatar" role="button" data-bs-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false">
                        <div class="avatar-parent-child">
                            <img alt="Image Placeholder"
                                 src="https://images.unsplash.com/photo-1548142813-c348350df52b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=3&w=256&h=256&q=80"
                                 class="avatar avatar- rounded-circle"/>
                            <span class="avatar-child avatar-badge bg-success"></span>
                        </div>
                    </a>
                    <!-- Menu -->
                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="sidebarAvatar">
                        <a href="#" class="dropdown-item">Profile</a>
                        <a href="#" class="dropdown-item">Settings</a>
                        <a href="#" class="dropdown-item">Billing</a>
                        <hr class="dropdown-divider"/>
                        <a href="#" class="dropdown-item">Logout</a>
                    </div>
                </div>
            </div>
            <jsp:include page="include/dashboard/category-dashboard.jsp"></jsp:include>

        </div>
    </nav>
    <!-- Main content -->
    <div class="h-screen flex-grow-1 overflow-y-lg-auto">
        <!-- Header -->
        <header class="bg-surface-primary border-bottom pt-6">
            <div class="container-fluid">
                <div class="mb-npx">
                    <div class="row align-items-center">
                        <div class="col-sm-6 col-12 mb-4 mb-sm-0">
                            <!-- Title -->
                            <h1 class="h2 mb-0 ls-tight">Product</h1>
                        </div>
                        <!-- Actions -->
                        <div class="col-sm-6 col-12 text-sm-end">
                            <div class="mx-n1">
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal"
                                        class="btn d-inline-flex btn-sm btn-primary mx-1">
                                    <span class="pe-2"> <i class="bi bi-plus"></i> </span>
                                    <span>Create</span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <!-- Nav -->
                    <ul class="nav nav-tabs mt-4 overflow-x border-0">
                        <li class="nav-item">
                            <a href="#" class="nav-link active">All files</a>
                        </li>
                  
                    </ul>
                </div>
            </div>
        </header>
        <!-- Main -->
        <main class="py-6 bg-surface-secondary">
            <div class="container-fluid">
                <!-- Card stats -->
                <div class="row g-6 mb-6">
                    <div class="col-xl-3 col-sm-6 col-12">
                        <div class="card shadow border-0">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <span class="h6 font-semibold text-muted text-sm d-block mb-2">Budget</span>
                                        <span class="h3 font-bold mb-0">$750.90</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-tertiary text-white text-lg rounded-circle">
                                            <i class="bi bi-credit-card"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="mt-2 mb-0 text-sm">
                    <span class="badge badge-pill bg-soft-success text-success me-2">
                      <i class="bi bi-arrow-up me-1"></i>13%
                    </span>
                                    <span class="text-nowrap text-xs text-muted">Since last month</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 col-12">
                        <div class="card shadow border-0">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <span class="h6 font-semibold text-muted text-sm d-block mb-2">New projects</span>
                                        <span class="h3 font-bold mb-0">215</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-primary text-white text-lg rounded-circle">
                                            <i class="bi bi-people"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="mt-2 mb-0 text-sm">
                    <span class="badge badge-pill bg-soft-success text-success me-2">
                      <i class="bi bi-arrow-up me-1"></i>30%
                    </span>
                                    <span class="text-nowrap text-xs text-muted">Since last month</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 col-12">
                        <div class="card shadow border-0">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <span class="h6 font-semibold text-muted text-sm d-block mb-2">Total hours</span>
                                        <span class="h3 font-bold mb-0">1.400</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-info text-white text-lg rounded-circle">
                                            <i class="bi bi-clock-history"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="mt-2 mb-0 text-sm">
                    <span class="badge badge-pill bg-soft-danger text-danger me-2">
                      <i class="bi bi-arrow-down me-1"></i>-5%
                    </span>
                                    <span class="text-nowrap text-xs text-muted">Since last month</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 col-12">
                        <div class="card shadow border-0">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <span class="h6 font-semibold text-muted text-sm d-block mb-2">Work load</span>
                                        <span class="h3 font-bold mb-0">95%</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-warning text-white text-lg rounded-circle">
                                            <i class="bi bi-minecart-loaded"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="mt-2 mb-0 text-sm">
                    <span class="badge badge-pill bg-soft-success text-success me-2">
                      <i class="bi bi-arrow-up me-1"></i>10%
                    </span>
                                    <span class="text-nowrap text-xs text-muted">Since last month</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card shadow border-0 mb-7">
                    <div class="card-header d-md-flex justify-content-between">
                        <h4 class="mb-0">Product</h4>

                        <div class="d-flex flex-column flex-md-row gap-3">
                            <div class="filter__item">
                                <input type="text" placeholder="Search" style="width: 100%;"
                                       class="filter--rounded border border-dark px-3 py-1 mt-3 mt-md-auto my-md-auto">
                            </div>

                            <ul class="navbar-nav filter__item">
                                <select class="filter--rounded nav-item dropdown border border-dark px-3 pointer"
                                        style="padding: 5px;">

                                    <ul class="dropdown-menu">
                                        <option name="price" value="none"> Option</option>

                                        <option name="price"><a class="dropdown-item">Action</a></option>

                                        <option name="price"><a class="dropdown-item">Action</a></option>
                                    </ul>
                                </select>
                            </ul>

                            <ul class="navbar-nav filter__item">
                                <select class="filter--rounded nav-item dropdown border border-dark px-3"
                                        style="padding: 5px;">
                                    <ul class="dropdown-menu">
                                        <option name="filter" value="none"> Option</option>

                                        <option name="filter"><a class="dropdown-item">Action</a></option>
                                    </ul>
                                </select>
                            </ul>

                            <button type="button" class="filter__item btn btn-outline-primary px-3 py-1">Apply</button>

                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover table-nowrap">
                            <thead class="thead-light">
                            <tr>
                                <th scope="col">Name</th>
                                <th scope="col">Date</th>
                                <th scope="col">Company</th>
                                <th scope="col">Offer</th>
                                <th scope="col">Meeting</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <img alt="..."
                                         src="https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=3&w=256&h=256&q=80"
                                         class="avatar avatar-sm rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Robert Fox
                                    </a>
                                </td>
                                <td>Feb 15, 2021</td>
                                <td>
                                    <img alt="..." src="https://preview.webpixels.io/web/img/other/logos/logo-1.png"
                                         class="avatar avatar-xs rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Dribbble
                                    </a>
                                </td>
                                <td>$3.500</td>
                                <td>
                      <span class="badge badge-lg badge-dot">
                        <i class="bg-success"></i>Scheduled
                      </span>
                                </td>
                                <td class="text-end">
                                    <a href="#" class="btn d-inline-flex btn-sm btn-neutral border-base mx-1">
                                        <span class="pe-2"> <i class="bi bi-pencil"></i> </span>
                                        <span>Edit</span>
                                    </a>
                                    <a href="#" class="btn btn-sm btn-neutral">View</a>
                                    <button type="button" class="btn btn-sm btn-square btn-neutral text-danger-hover">
                                        <i class="bi bi-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img alt="..."
                                         src="https://images.unsplash.com/photo-1610271340738-726e199f0258?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=3&w=256&h=256&q=80"
                                         class="avatar avatar-sm rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Darlene Robertson
                                    </a>
                                </td>
                                <td>Apr 15, 2021</td>
                                <td>
                                    <img alt="..." src="https://preview.webpixels.io/web/img/other/logos/logo-2.png"
                                         class="avatar avatar-xs rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Netguru
                                    </a>
                                </td>
                                <td>$2.750</td>
                                <td>
                      <span class="badge badge-lg badge-dot">
                        <i class="bg-warning"></i>Postponed
                      </span>
                                </td>
                                <td class="text-end">
                                    <a href="#" class="btn d-inline-flex btn-sm btn-neutral border-base mx-1">
                                        <span class="pe-2"> <i class="bi bi-pencil"></i> </span>
                                        <span>Edit</span>
                                    </a>
                                    <a href="#" class="btn btn-sm btn-neutral">View</a>
                                    <button type="button" class="btn btn-sm btn-square btn-neutral text-danger-hover">
                                        <i class="bi bi-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img alt="..."
                                         src="https://images.unsplash.com/photo-1610878722345-79c5eaf6a48c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=3&w=256&h=256&q=80"
                                         class="avatar avatar-sm rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Theresa Webb
                                    </a>
                                </td>
                                <td>Mar 20, 2021</td>
                                <td>
                                    <img alt="..." src="https://preview.webpixels.io/web/img/other/logos/logo-3.png"
                                         class="avatar avatar-xs rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Figma
                                    </a>
                                </td>
                                <td>$4.200</td>
                                <td>
                      <span class="badge badge-lg badge-dot">
                        <i class="bg-success"></i>Scheduled
                      </span>
                                </td>
                                <td class="text-end">
                                    <a href="#" class="btn d-inline-flex btn-sm btn-neutral border-base mx-1">
                                        <span class="pe-2"> <i class="bi bi-pencil"></i> </span>
                                        <span>Edit</span>
                                    </a>
                                    <a href="#" class="btn btn-sm btn-neutral">View</a>
                                    <button type="button" class="btn btn-sm btn-square btn-neutral text-danger-hover">
                                        <i class="bi bi-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img alt="..."
                                         src="https://images.unsplash.com/photo-1612422656768-d5e4ec31fac0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=3&w=256&h=256&q=80"
                                         class="avatar avatar-sm rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Kristin Watson
                                    </a>
                                </td>
                                <td>Feb 15, 2021</td>
                                <td>
                                    <img alt="..." src="https://preview.webpixels.io/web/img/other/logos/logo-4.png"
                                         class="avatar avatar-xs rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Mailchimp
                                    </a>
                                </td>
                                <td>$3.500</td>
                                <td>
                      <span class="badge badge-lg badge-dot">
                        <i class="bg-dark"></i>Not discussed
                      </span>
                                </td>
                                <td class="text-end">
                                    <a href="#" class="btn d-inline-flex btn-sm btn-neutral border-base mx-1">
                                        <span class="pe-2"> <i class="bi bi-pencil"></i> </span>
                                        <span>Edit</span>
                                    </a>
                                    <a href="#" class="btn btn-sm btn-neutral">View</a>
                                    <button type="button" class="btn btn-sm btn-square btn-neutral text-danger-hover">
                                        <i class="bi bi-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img alt="..."
                                         src="https://images.unsplash.com/photo-1608976328267-e673d3ec06ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=3&w=256&h=256&q=80"
                                         class="avatar avatar-sm rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Cody Fisher
                                    </a>
                                </td>
                                <td>Apr 10, 2021</td>
                                <td>
                                    <img alt="..." src="https://preview.webpixels.io/web/img/other/logos/logo-5.png"
                                         class="avatar avatar-xs rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Webpixels
                                    </a>
                                </td>
                                <td>$1.500</td>
                                <td>
                      <span class="badge badge-lg badge-dot">
                        <i class="bg-danger"></i>Canceled
                      </span>
                                </td>
                                <td class="text-end">
                                    <a href="#" class="btn d-inline-flex btn-sm btn-neutral border-base mx-1">
                                        <span class="pe-2"> <i class="bi bi-pencil"></i> </span>
                                        <span>Edit</span>
                                    </a>
                                    <a href="#" class="btn btn-sm btn-neutral">View</a>
                                    <button type="button" class="btn btn-sm btn-square btn-neutral text-danger-hover">
                                        <i class="bi bi-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img alt="..."
                                         src="https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=3&w=256&h=256&q=80"
                                         class="avatar avatar-sm rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Robert Fox
                                    </a>
                                </td>
                                <td>Feb 15, 2021</td>
                                <td>
                                    <img alt="..." src="https://preview.webpixels.io/web/img/other/logos/logo-1.png"
                                         class="avatar avatar-xs rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Dribbble
                                    </a>
                                </td>
                                <td>$3.500</td>
                                <td>
                      <span class="badge badge-lg badge-dot">
                        <i class="bg-success"></i>Scheduled
                      </span>
                                </td>
                                <td class="text-end">
                                    <a href="#" class="btn d-inline-flex btn-sm btn-neutral border-base mx-1">
                                        <span class="pe-2"> <i class="bi bi-pencil"></i> </span>
                                        <span>Edit</span>
                                    </a>
                                    <a href="#" class="btn btn-sm btn-neutral">View</a>
                                    <button type="button" class="btn btn-sm btn-square btn-neutral text-danger-hover">
                                        <i class="bi bi-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img alt="..."
                                         src="https://images.unsplash.com/photo-1610271340738-726e199f0258?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=3&w=256&h=256&q=80"
                                         class="avatar avatar-sm rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Darlene Robertson
                                    </a>
                                </td>
                                <td>Apr 15, 2021</td>
                                <td>
                                    <img alt="..." src="https://preview.webpixels.io/web/img/other/logos/logo-2.png"
                                         class="avatar avatar-xs rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Netguru
                                    </a>
                                </td>
                                <td>$2.750</td>
                                <td>
                      <span class="badge badge-lg badge-dot">
                        <i class="bg-warning"></i>Postponed
                      </span>
                                </td>
                                <td class="text-end">
                                    <a href="#" class="btn d-inline-flex btn-sm btn-neutral border-base mx-1">
                                        <span class="pe-2"> <i class="bi bi-pencil"></i> </span>
                                        <span>Edit</span>
                                    </a>
                                    <a href="#" class="btn btn-sm btn-neutral">View</a>
                                    <button type="button" class="btn btn-sm btn-square btn-neutral text-danger-hover">
                                        <i class="bi bi-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img alt="..."
                                         src="https://images.unsplash.com/photo-1610878722345-79c5eaf6a48c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=3&w=256&h=256&q=80"
                                         class="avatar avatar-sm rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Theresa Webb
                                    </a>
                                </td>
                                <td>Mar 20, 2021</td>
                                <td>
                                    <img alt="..." src="https://preview.webpixels.io/web/img/other/logos/logo-3.png"
                                         class="avatar avatar-xs rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Figma
                                    </a>
                                </td>
                                <td>$4.200</td>
                                <td>
                      <span class="badge badge-lg badge-dot">
                        <i class="bg-success"></i>Scheduled
                      </span>
                                </td>
                                <td class="text-end">
                                    <a href="#" class="btn d-inline-flex btn-sm btn-neutral border-base mx-1">
                                        <span class="pe-2"> <i class="bi bi-pencil"></i> </span>
                                        <span>Edit</span>
                                    </a>
                                    <a href="#" class="btn btn-sm btn-neutral">View</a>
                                    <button type="button" class="btn btn-sm btn-square btn-neutral text-danger-hover">
                                        <i class="bi bi-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img alt="..."
                                         src="https://images.unsplash.com/photo-1612422656768-d5e4ec31fac0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=3&w=256&h=256&q=80"
                                         class="avatar avatar-sm rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Kristin Watson
                                    </a>
                                </td>
                                <td>Feb 15, 2021</td>
                                <td>
                                    <img alt="..." src="https://preview.webpixels.io/web/img/other/logos/logo-4.png"
                                         class="avatar avatar-xs rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Mailchimp
                                    </a>
                                </td>
                                <td>$3.500</td>
                                <td>
                      <span class="badge badge-lg badge-dot">
                        <i class="bg-dark"></i>Not discussed
                      </span>
                                </td>
                                <td class="text-end">
                                    <a href="#" class="btn d-inline-flex btn-sm btn-neutral border-base mx-1">
                                        <span class="pe-2"> <i class="bi bi-pencil"></i> </span>
                                        <span>Edit</span>
                                    </a>
                                    <a href="#" class="btn btn-sm btn-neutral">View</a>
                                    <button type="button" class="btn btn-sm btn-square btn-neutral text-danger-hover">
                                        <i class="bi bi-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img alt="..."
                                         src="https://images.unsplash.com/photo-1608976328267-e673d3ec06ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=3&w=256&h=256&q=80"
                                         class="avatar avatar-sm rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Cody Fisher
                                    </a>
                                </td>
                                <td>Apr 10, 2021</td>
                                <td>
                                    <img alt="..." src="https://preview.webpixels.io/web/img/other/logos/logo-5.png"
                                         class="avatar avatar-xs rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        Webpixels
                                    </a>
                                </td>
                                <td>$1.500</td>
                                <td>
                      <span class="badge badge-lg badge-dot">
                        <i class="bg-danger"></i>Canceled
                      </span>
                                </td>
                                <td class="text-end">
                                    <a href="#" class="btn d-inline-flex btn-sm btn-neutral border-base mx-1">
                                        <span class="pe-2"> <i class="bi bi-pencil"></i> </span>
                                        <span>Edit</span>
                                    </a>
                                    <a href="#" class="btn btn-sm btn-neutral">View</a>
                                    <button type="button" class="btn btn-sm btn-square btn-neutral text-danger-hover">
                                        <i class="bi bi-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer border-0 py-5">
                        <span class="text-muted text-sm">Showing 10 items out of 250 results found</span>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
</body>


</html>