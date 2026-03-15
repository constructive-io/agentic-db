-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/entity_id/alterations/alt0000002427


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_invites 
  ALTER COLUMN entity_id DROP NOT NULL;


