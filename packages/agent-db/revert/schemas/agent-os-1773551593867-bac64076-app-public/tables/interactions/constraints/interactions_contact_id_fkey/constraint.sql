-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/constraints/interactions_contact_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".interactions 
  DROP CONSTRAINT interactions_contact_id_fkey;


