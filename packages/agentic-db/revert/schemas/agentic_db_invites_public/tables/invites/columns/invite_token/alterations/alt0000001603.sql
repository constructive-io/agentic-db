-- Revert: schemas/agentic_db_invites_public/tables/invites/columns/invite_token/alterations/alt0000001603


ALTER TABLE "agentic_db_invites_public".invites 
  ALTER COLUMN invite_token DROP NOT NULL;


