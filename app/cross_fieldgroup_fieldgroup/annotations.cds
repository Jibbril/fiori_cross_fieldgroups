using CatalogService as service from '../../srv/cat-service';

annotate service.Books with @(
    UI: {
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Value : stock,
            },
        ],

        HeaderFacets  : [
            {
                $Type : 'UI.ReferenceFacet',
                Target: '@UI.FieldGroup#BookInfo'
            },
            {
                $Type : 'UI.ReferenceFacet',
                Target: '@UI.FieldGroup#SummaryInfoFromBooks'
            },

            // The fieldgroup below here is not displayed properly.
            {
                $Type : 'UI.ReferenceFacet',
                Target: 'summary/@UI.FieldGroup#SummaryInfoFromSummaries'
            },
        ],

        FieldGroup #BookInfo : {
            $Type : 'UI.FieldGroupType',
            Data: [
                {
                    $Type: 'UI.DataField',
                    Label: 'Titleeeeee',
                    Value: title
                },
                {
                    $Type: 'UI.DataField',
                    Label: 'Stock',
                    Value: stock
                }
            ]
        }, 

        FieldGroup #SummaryInfoFromBooks : {
            $Type : 'UI.FieldGroupType',
            Data: [
                {
                    $Type: 'UI.DataField',
                    Label: 'Summary from Books',
                    Value: summary.text
                }
            ]
        }, 
    }
);

annotate service.Summaries with @(
    UI: {
        FieldGroup #SummaryInfoFromSummaries : {
            $Type : 'UI.FieldGroupType',
            Data: [
                {
                    $Type: 'UI.DataField',
                    Label: 'Summary from Summaries',
                    Value: text
                }
            ]
        },
    }
);
