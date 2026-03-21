-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/indexes/app_memberships_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/created_at/column


CREATE INDEX app_memberships_created_at_idx ON agentic_db_memberships_public.app_memberships ( created_at );

