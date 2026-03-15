-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/columns/url/alterations/alt0000002466


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".images 
  ALTER COLUMN url DROP NOT NULL;


