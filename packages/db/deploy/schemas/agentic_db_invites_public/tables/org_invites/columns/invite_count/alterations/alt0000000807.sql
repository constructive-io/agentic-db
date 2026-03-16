-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/columns/invite_count/alterations/alt0000000807
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table
-- requires: schemas/agentic_db_invites_public/tables/org_invites/columns/invite_count/column



ALTER TABLE "agentic_db_invites_public".org_invites 
    ALTER COLUMN invite_count SET DEFAULT 0;

