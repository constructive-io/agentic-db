-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/constraints/interactions_contact_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".interactions 
  DROP CONSTRAINT interactions_contact_id_fkey;


