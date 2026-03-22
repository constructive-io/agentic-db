-- Deploy: schemas/agentic_db_memberships_public/tables/app_grants/columns/updated_at/alterations/alt0000001006
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_grants/table
-- requires: schemas/agentic_db_memberships_public/tables/app_grants/columns/updated_at/column


ALTER TABLE "agentic_db_memberships_public".app_grants 
  ALTER COLUMN updated_at SET DEFAULT now();

