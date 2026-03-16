-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/columns/granted/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table


ALTER TABLE "agentic_db_memberships_public".app_memberships 
  ADD COLUMN granted bit(24);

