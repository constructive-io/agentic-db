-- Revert: schemas/agentic_db_invites_public/tables/invites/columns/id/column


ALTER TABLE "agentic_db_invites_public".invites 
  DROP COLUMN id RESTRICT;


