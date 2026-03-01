<style>
.sv2-error-wrap {
    max-width: 760px;
    margin: 24px auto;
    padding: 24px;
    border-radius: 14px;
    border: 1px solid #fecaca;
    background: linear-gradient(145deg, #fff1f2 0%, #ffffff 70%);
    box-shadow: 0 12px 30px rgba(127, 29, 29, 0.12);
}

.sv2-error-title {
    margin: 0 0 10px;
    color: #991b1b;
    font-size: 26px;
    line-height: 1.2;
}

.sv2-error-message {
    margin: 0;
    color: #334155;
    font-size: 15px;
}

@media (max-width: 767px) {
    .sv2-error-wrap {
        margin: 12px;
        padding: 16px;
    }

    .sv2-error-title {
        font-size: 22px;
    }
}
</style>

<div class="sv2-error-wrap" role="alert" aria-live="assertive">
    <h2 class="sv2-error-title">{$title}</h2>
    <p class="sv2-error-message">{$message}</p>
</div>
