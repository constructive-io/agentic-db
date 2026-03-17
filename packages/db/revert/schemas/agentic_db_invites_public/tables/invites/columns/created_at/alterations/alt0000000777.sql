-- Revert: schemas/agentic_db_invites_public/tables/invites/columns/created_at/alterations/alt0000000777


ALTER TABLE "agentic_db_invites_public".invites 
  ALTER COLUMN created_at DROP DEFAULT;


