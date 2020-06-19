class Doppelganger::RoleSubcommitteeRepresenter < Representable::Decorator
    include Representable::JSON

    property :name
    property :code
    property :parent_committee_id
    property :api_uri
    property :side
    property :title
    property :rank_in_party
    property :begin_date
    property :end_date
end