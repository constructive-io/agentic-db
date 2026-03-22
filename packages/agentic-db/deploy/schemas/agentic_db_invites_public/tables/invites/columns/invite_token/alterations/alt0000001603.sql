-- Deploy: schemas/agentic_db_invites_public/tables/invites/columns/invite_token/alterations/alt0000001603
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table
-- requires: schemas/agentic_db_invites_public/tables/invites/columns/invite_token/column


ALTER TABLE "agentic_db_invites_public".invites 
  ALTER COLUMN invite_token SET NOT NULL;

