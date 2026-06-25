
-- ============ FIX: Add missing GRANT EXECUTE on all new RPCs ============
-- Migration 2 added these functions but forgot GRANT EXECUTE.
-- Without these, Supabase returns "permission denied" before the function body runs.

-- Kitchen-only functions (require authenticated + kitchen role internally)
GRANT EXECUTE ON FUNCTION public.confirm_payment(uuid) TO authenticated;
GRANT EXECUTE ON FUNCTION public.update_ticket_item_quantity(uuid, integer) TO authenticated;
GRANT EXECUTE ON FUNCTION public.delete_ticket_item(uuid) TO authenticated;
GRANT EXECUTE ON FUNCTION public.cancel_ticket(uuid) TO authenticated;
GRANT EXECUTE ON FUNCTION public.reopen_ticket(uuid) TO authenticated;

-- grant_self_kitchen: Migration 3 created this but never granted EXECUTE.
-- Authenticated users must be able to call it to acquire the kitchen role.
GRANT EXECUTE ON FUNCTION public.grant_self_kitchen() TO authenticated;

-- request_payment: Customer-facing; needs anon + authenticated (customers aren't logged in).
GRANT EXECUTE ON FUNCTION public.request_payment(uuid) TO anon, authenticated;
