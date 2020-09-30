function formatRepo(repo) {
    if (repo.loading) return repo.text;

    var markup = "<div class='select2-result-repository clearfix'>" +
        "<div class='select2-result-repository__avatar'><img height='100' width='100' src='" + repo.avatar_url + "' /></div>" +
        "<div class='select2-result-repository__meta'>" +
        "<div class='select2-result-repository__title' data-value='User_" + repo.id + "'>" + repo.text + "</div>";

    // if (repo.description) {
    //     markup += "<div class='select2-result-repository__description'>" + repo.description + "</div>";
    // }

    // markup += "<div class='select2-result-repository__statistics'>" +
    //     "<div class='select2-result-repository__forks'><i class='icofont icofont-flash'></i> " + repo.forks_count + " Forks</div>" +
    //     "<div class='select2-result-repository__stargazers'><i class='icofont icofont-star'></i> " + repo.stargazers_count + " Stars</div>" +
    //     "<div class='select2-result-repository__watchers'><i class='icofont icofont-eye-alt'></i> " + repo.watchers_count + " Watchers</div>" +
    //     "</div>" +
    //     "</div></div>";
    markup += "</div></div>";
    return markup;
}

function formatRepoSelection(repo) {
    return repo.full_name || repo.text;
}
$(".js-data-example-ajax").select2({
    ajax: {
        url: "GetUserListDynamic.php",
        dataType: 'json',
        delay: 250,
        type: "post",
        data: function(params) {
            return {
                searchTerm: params.term, // search term
                // page : params.page
            };
        },
        processResults: function(data, params) {
            // parse the results into the format expected by Select2
            // since we are using custom formatting functions we do not need to
            // alter the remote JSON data, except to indicate that infinite
            // scrolling can be used
            // params.page = params.page || 1;

            return {
                results: data,
                // results: data.items,
                // pagination: {
                //     more: (params.page * 30) < data.total_count
                // }
            };
        },
        cache: true
    },
    escapeMarkup: function(markup) {
        return markup;
    }, // let our custom formatter work
    minimumInputLength: 1,
    minimumResultsForSearch: Infinity,
    templateResult: formatRepo, // omitted for brevity, see the source of this page
    templateSelection: formatRepoSelection // omitted for brevity, see the source of this page
});