-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/columns/updated_at/alterations/alt0000000066
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/updated_at/column


ALTER TABLE "agentic_db_memberships_public".app_memberships 
  ALTER COLUMN updated_at SET DEFAULT now();

