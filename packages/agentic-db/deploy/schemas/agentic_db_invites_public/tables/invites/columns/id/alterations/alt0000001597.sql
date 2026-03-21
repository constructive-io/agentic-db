-- Deploy: schemas/agentic_db_invites_public/tables/invites/columns/id/alterations/alt0000001597
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table
-- requires: schemas/agentic_db_invites_public/tables/invites/columns/id/column


ALTER TABLE "agentic_db_invites_public".invites 
  ALTER COLUMN id SET NOT NULL;

