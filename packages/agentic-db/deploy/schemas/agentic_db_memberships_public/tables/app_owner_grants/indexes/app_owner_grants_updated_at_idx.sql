-- Deploy: schemas/agentic_db_memberships_public/tables/app_owner_grants/indexes/app_owner_grants_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_owner_grants/table
-- requires: schemas/agentic_db_memberships_public/tables/app_owner_grants/columns/updated_at/column


CREATE INDEX app_owner_grants_updated_at_idx ON agentic_db_memberships_public.app_owner_grants ( updated_at );

