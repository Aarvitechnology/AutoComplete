$(".js-example-tokenizer").select2({
    tags: true,
    tokenSeparators: [',', ' '],
    placeholder: "Select Your Name",
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
});