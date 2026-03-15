-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_claimed_invites/columns/entity_id/alterations/alt0000002437


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_claimed_invites 
  ALTER COLUMN entity_id DROP NOT NULL;


