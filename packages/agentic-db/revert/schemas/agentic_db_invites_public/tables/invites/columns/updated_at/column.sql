-- Revert: schemas/agentic_db_invites_public/tables/invites/columns/updated_at/column


ALTER TABLE "agentic_db_invites_public".invites 
  DROP COLUMN updated_at RESTRICT;


