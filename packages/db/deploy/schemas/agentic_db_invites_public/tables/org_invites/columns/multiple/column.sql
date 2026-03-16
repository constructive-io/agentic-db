-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/columns/multiple/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table


ALTER TABLE "agentic_db_invites_public".org_invites 
  ADD COLUMN multiple boolean;

