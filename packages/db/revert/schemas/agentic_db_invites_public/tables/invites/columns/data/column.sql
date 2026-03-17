-- Revert: schemas/agentic_db_invites_public/tables/invites/columns/data/column


ALTER TABLE "agentic_db_invites_public".invites 
  DROP COLUMN data RESTRICT;


