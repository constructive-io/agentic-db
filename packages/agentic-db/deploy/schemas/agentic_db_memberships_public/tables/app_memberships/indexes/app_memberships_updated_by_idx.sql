-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/indexes/app_memberships_updated_by_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/updated_by/column


CREATE INDEX app_memberships_updated_by_idx ON agentic_db_memberships_public.app_memberships ( updated_by );

