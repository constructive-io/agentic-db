-- Deploy: schemas/agentic_db_invites_public/tables/org_claimed_invites/columns/updated_at/alterations/alt0000001672
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_claimed_invites/table
-- requires: schemas/agentic_db_invites_public/tables/org_claimed_invites/columns/updated_at/column


ALTER TABLE "agentic_db_invites_public".org_claimed_invites 
  ALTER COLUMN updated_at SET DEFAULT now();

