-- Revert: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/phone_numbers/grants/authenticated/update/grant


REVOKE UPDATE (cc, number, owner_id, is_primary) ON "agent-os-1773546821914-39f1cb9b-user-identifiers-public".phone_numbers FROM authenticated;


