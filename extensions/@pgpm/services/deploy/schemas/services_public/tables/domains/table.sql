-- Deploy schemas/services_public/tables/domains/table to pg

-- requires: schemas/services_public/schema
-- requires: schemas/services_public/tables/apis/table 
-- requires: schemas/services_public/tables/sites/table 
-- requires: schemas/metaschema_public/tables/database/table 

BEGIN;

CREATE TABLE services_public.domains (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,
    
    api_id uuid,
    site_id uuid,
    service_id uuid,

    subdomain hostname,
    domain hostname,

    labels jsonb NOT NULL DEFAULT '{}',
    annotations jsonb NOT NULL DEFAULT '{}',

    --
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT api_fkey FOREIGN KEY (api_id) REFERENCES services_public.apis (id) ON DELETE CASCADE,
    CONSTRAINT site_fkey FOREIGN KEY (site_id) REFERENCES services_public.sites (id) ON DELETE CASCADE,
    CONSTRAINT one_route_chk CHECK (
        num_nonnulls(api_id, site_id, service_id) <= 1
    ),
    UNIQUE ( subdomain, domain )
);

COMMENT ON TABLE services_public.domains IS 'DNS domain and subdomain routing: maps hostnames to either an API endpoint or a site';
COMMENT ON COLUMN services_public.domains.id IS 'Unique identifier for this domain record';
COMMENT ON COLUMN services_public.domains.database_id IS 'Reference to the metaschema database this domain belongs to';
COMMENT ON COLUMN services_public.domains.api_id IS 'API endpoint this domain routes to (mutually exclusive with site_id)';
COMMENT ON COLUMN services_public.domains.site_id IS 'Site this domain routes to (mutually exclusive with api_id and service_id)';
COMMENT ON COLUMN services_public.domains.service_id IS 'Server deployment this domain routes to (mutually exclusive with api_id and site_id)';
COMMENT ON COLUMN services_public.domains.labels IS 'Key/value pairs for selecting and filtering domains';
COMMENT ON COLUMN services_public.domains.annotations IS 'Freeform metadata for tooling and operational notes';
COMMENT ON COLUMN services_public.domains.subdomain IS 'Subdomain portion of the hostname';
COMMENT ON COLUMN services_public.domains.domain IS 'Root domain of the hostname';

CREATE INDEX domains_database_id_idx ON services_public.domains ( database_id );

CREATE INDEX domains_api_id_idx ON services_public.domains ( api_id );

CREATE INDEX domains_site_id_idx ON services_public.domains ( site_id );

CREATE INDEX domains_service_id_idx ON services_public.domains ( service_id );

COMMIT;
