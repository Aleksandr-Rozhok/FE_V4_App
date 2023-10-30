using TravelService as service from '../../srv/travel-service';

annotate service.Passenger with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : City,
        },
        {
            $Type : 'UI.DataField',
            Value : CountryCode_code,
        },
        {
            $Type : 'UI.DataField',
            Value : PostalCode,
        },
    ]
);
annotate service.Passenger with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : FullName,
            },
            {
                $Type : 'UI.DataField',
                Value : CustomerID,
            },
            {
                $Type : 'UI.DataField',
                Value : FirstName,
            },
            {
                $Type : 'UI.DataField',
                Value : LastName,
            },
            {
                $Type : 'UI.DataField',
                Value : Title,
            },
            {
                $Type : 'UI.DataField',
                Value : Street,
            },
            {
                $Type : 'UI.DataField',
                Value : PostalCode,
            },
            {
                $Type : 'UI.DataField',
                Value : City,
            },
            {
                $Type : 'UI.DataField',
                Value : CountryCode_code,
            },
            {
                $Type : 'UI.DataField',
                Value : PhoneNumber,
            },
            {
                $Type : 'UI.DataField',
                Value : EMailAddress,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.Passenger with @(
    UI.SelectionFields : [
        CountryCode_code,
        City,
        PostalCode,
    ]
);
annotate service.Passenger with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Contact Details',
            ID : 'ContactDetails',
            Target : '@UI.FieldGroup#ContactDetails',
        },
    ],
    UI.FieldGroup #ContactDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : FullName,
            },{
                $Type : 'UI.DataField',
                Value : EMailAddress,
            },{
                $Type : 'UI.DataField',
                Value : PhoneNumber,
            },],
    }
);
annotate service.Passenger with @(
    UI.HeaderInfo : {
        TypeName : '{i18n>CustomerID}',
        TypeNamePlural : '{i18n>Customers}',
        Title : {
            $Type : 'UI.DataField',
            Value : FullName,
        },
    }
);
