-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/grants/authenticated/update/grant


REVOKE UPDATE (email, owner_id, is_primary) ON "agent-os-1773551593867-bac64076-user-identifiers-public".emails FROM authenticated;


