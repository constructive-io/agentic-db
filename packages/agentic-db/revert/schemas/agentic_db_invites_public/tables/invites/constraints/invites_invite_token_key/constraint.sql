-- Revert: schemas/agentic_db_invites_public/tables/invites/constraints/invites_invite_token_key/constraint


ALTER TABLE "agentic_db_invites_public".invites 
  DROP CONSTRAINT invites_invite_token_key;


