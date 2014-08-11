{{ content() }}

<ul class="pager">
    <li class="pull-right">
        {{ link_to("users/create", '<i class="glyphicon glyphicon-plus"></i> Create users', "class": "btn btn-primary") }}
    </li>
</ul>

{% for user in users %}
{% if loop.first %}
<table id="grid" class="table table-bordered table-striped table-hover">
    <thead>
        <tr>
            <th data-column-id="Id" data-type="numeric">Id</th>
            <th data-column-id="Name">Name</th>
            <th data-column-id="Email">Email</th>
            <th data-column-id="Profile">Profile</th>
            <th data-column-id="Banned">Banned?</th>
            <th data-column-id="Suspended">Suspended?</th>
            <th data-column-id="Confirmed">Confirmed?</th>
            <th data-column-id="Action">Action</th>
        </tr>
    </thead>
{% endif %}
    <tbody>
        <tr>
            <td>{{ user.id }}</td>
            <td>{{ user.name }}</td>
            <td>{{ user.email }}</td>
            <td>{{ user.profile.name }}</td>
            <td>{{ user.banned == 'Y' ? 'Yes' : 'No' }}</td>
            <td>{{ user.suspended == 'Y' ? 'Yes' : 'No' }}</td>
            <td>{{ user.active == 'Y' ? 'Yes' : 'No' }}</td>
            <td>
                {{ link_to("users/edit/" ~ user.id, '<i class="glyphicon glyphicon-pencil"></i>', "class": "btn btn-primary") }}
                {{ link_to("users/delete/" ~ user.id, '<i class="glyphicon glyphicon-remove"></i>', "class": "btn btn-primary") }}
            </td>
        </tr>
    </tbody>
{% else %}
    No users are recorded
{% endfor %}

<!-- DATA TABLES -->
{{ stylesheet_link('plugins/admin-lte/css/datatables/dataTables.bootstrap.css') }}
<!-- DATA TABES SCRIPT -->
{{ javascript_include('plugins/admin-lte/js/plugins/datatables/jquery.dataTables.js') }}
{{ javascript_include('plugins/admin-lte/js/plugins/datatables/dataTables.bootstrap.js') }}
<script type="text/javascript">
    $(function() {
        $('#grid').dataTable({
            "bPaginate": true,
            "bLengthChange": true,
            "bFilter": true,
            "bSort": true,
            "bInfo": true,
            "bAutoWidth": true
        });
    });
</script>