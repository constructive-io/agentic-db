-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/invite_token/alterations/alt0000002406


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_invites 
  ALTER COLUMN invite_token DROP NOT NULL;


